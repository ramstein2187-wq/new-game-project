#!/usr/bin/env python3
"""Sync detailed specs and structured gameplay data catalogs to Notion."""

from __future__ import annotations

import argparse
import importlib.util
import json
import os
import re
import sys
import tomllib
from datetime import date
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
CONFIG_PATH = ROOT / "docs" / "notion-knowledge-config.json"
WIKI_SYNC = ROOT / "tools" / "sync_notion_wiki.py"
IMAGE_RE = re.compile(r"^!\[([^\]]*)\]\(([^)]+)\)\s*$")

module_spec = importlib.util.spec_from_file_location("wiki_sync", WIKI_SYNC)
if module_spec is None or module_spec.loader is None:
    raise RuntimeError("Cannot load sync_notion_wiki.py")
wiki = importlib.util.module_from_spec(module_spec)
module_spec.loader.exec_module(wiki)

SyncError = wiki.SyncError
NotionClient = wiki.NotionClient


def load_config() -> dict[str, Any]:
    data = json.loads(CONFIG_PATH.read_text(encoding="utf-8"))
    if data.get("version") != 1:
        raise SyncError("Unsupported knowledge config version")
    return data


def split_front_matter(text: str, source: str) -> tuple[dict[str, Any], str]:
    lines = text.splitlines()
    if not lines or lines[0].strip() != "+++":
        raise SyncError(f"{source}: missing TOML front matter")
    end = next((i for i, line in enumerate(lines[1:], 1) if line.strip() == "+++"), None)
    if end is None:
        raise SyncError(f"{source}: unclosed TOML front matter")
    try:
        meta = tomllib.loads("\n".join(lines[1:end]))
    except tomllib.TOMLDecodeError as exc:
        raise SyncError(f"{source}: invalid TOML: {exc}") from exc
    return meta, "\n".join(lines[end + 1:]).lstrip("\n")


def markdown_blocks(body: str, source_path: Path, repository: str) -> list[dict[str, Any]]:
    """Use the wiki Markdown parser, adding external image support."""
    blocks: list[dict[str, Any]] = []
    buffer: list[str] = []

    def flush() -> None:
        if buffer:
            blocks.extend(wiki.markdown_to_blocks("\n".join(buffer)))
            buffer.clear()

    for line in body.splitlines():
        match = IMAGE_RE.match(line.strip())
        if not match:
            buffer.append(line)
            continue
        flush()
        alt, target = match.groups()
        if target.startswith(("http://", "https://")):
            url = target
        else:
            resolved = (source_path.parent / target).resolve()
            try:
                rel = resolved.relative_to(ROOT).as_posix()
            except ValueError as exc:
                raise SyncError(f"{source_path}: image escapes repository: {target}") from exc
            url = f"https://raw.githubusercontent.com/{repository}/main/{rel}"
        blocks.append({
            "object": "block",
            "type": "image",
            "image": {
                "type": "external",
                "external": {"url": url},
                "caption": wiki.parse_inline(alt) if alt else [],
            },
        })
    flush()
    return blocks


def text_prop(value: str) -> dict[str, Any]:
    return {"rich_text": wiki.rich_text_segment(value)}


def title_prop(value: str) -> dict[str, Any]:
    return {"title": wiki.rich_text_segment(value)}


def query_data_source(client: NotionClient, data_source_id: str) -> list[dict[str, Any]]:
    pages: list[dict[str, Any]] = []
    cursor: str | None = None
    while True:
        payload: dict[str, Any] = {"page_size": 100}
        if cursor:
            payload["start_cursor"] = cursor
        response = client.request("POST", f"/data_sources/{data_source_id}/query", payload)
        pages.extend(response.get("results", []))
        if not response.get("has_more"):
            return pages
        cursor = response.get("next_cursor")
        if not cursor:
            raise SyncError("Notion query reported has_more without a cursor")


def source_map(client: NotionClient, data_source_id: str) -> dict[str, str]:
    result: dict[str, str] = {}
    for page in query_data_source(client, data_source_id):
        props = page.get("properties", {})
        source = wiki.property_plain_text(props.get("소스 파일"))
        if not source:
            continue
        if source in result:
            raise SyncError(f"Duplicate Notion source key: {source}")
        result[source] = page["id"]
    return result


def upsert_page(
    client: NotionClient,
    data_source_id: str,
    existing: dict[str, str],
    source_key: str,
    properties: dict[str, Any],
    icon: str,
    blocks: list[dict[str, Any]],
) -> str:
    page_id = existing.get(source_key)
    page_payload = {
        "properties": properties,
        "icon": {"type": "emoji", "emoji": icon},
    }
    if page_id is None:
        created = client.request("POST", "/pages", {
            "parent": {"type": "data_source_id", "data_source_id": data_source_id},
            **page_payload,
        })
        page_id = created.get("id")
        if not isinstance(page_id, str) or not page_id:
            raise SyncError(f"Create page returned no ID for {source_key}")
        existing[source_key] = page_id
        action = "created"
    else:
        client.request("PATCH", f"/pages/{page_id}", page_payload)
        action = "updated"

    client.clear_managed_body(page_id)
    client.append_children(page_id, blocks)
    print(f"{action}: {source_key}")
    return page_id


def discover_specs(config: dict[str, Any]) -> list[dict[str, Any]]:
    spec_root = ROOT / config["specs"]["source_dir"]
    records: list[dict[str, Any]] = []
    required = {"status", "areas", "type", "systems", "milestones", "code_paths", "diagram"}

    for path in sorted(spec_root.glob("*.md")):
        if path.name == "README.md" or path.name.startswith("_"):
            continue
        source = path.relative_to(ROOT).as_posix()
        meta, body = split_front_matter(path.read_text(encoding="utf-8"), source)
        missing = required - meta.keys()
        if missing:
            raise SyncError(f"{source}: missing metadata: {', '.join(sorted(missing))}")
        if not isinstance(meta["areas"], list) or not meta["areas"]:
            raise SyncError(f"{source}: areas must be a non-empty list")
        if not isinstance(meta["code_paths"], list) or not meta["code_paths"]:
            raise SyncError(f"{source}: code_paths must be a non-empty list")
        title = next((line[2:].strip() for line in body.splitlines() if line.startswith("# ")), "")
        if not title:
            raise SyncError(f"{source}: missing H1")
        diagram = ROOT / meta["diagram"]
        if not diagram.is_file():
            raise SyncError(f"{source}: diagram missing: {meta['diagram']}")
        records.append({
            "path": path,
            "source": source,
            "title": title,
            "meta": meta,
            "body": body,
        })

    if not records:
        raise SyncError("No detailed specs found")
    return records


ABILITY_KEYS = ("STR", "DEX", "CON", "INT", "WIS", "CHA")

MONSTER_ORIGINS = {
    "토착",
    "관리자 유산",
    "심층",
    "인간 제작",
    "외우주",
    "복합",
    "불명",
}
MONSTER_COMPOSITIONS = {"생체", "기계", "생체기계", "기타"}
MONSTER_COGNITIONS = {
    "본능형",
    "훈련형",
    "동물지능",
    "인간급",
    "고등지능",
    "분산지능",
    "미상",
}
MONSTER_COMBAT_ROLES = {
    "근접 압박",
    "원거리",
    "기습",
    "방어",
    "지원",
    "소환",
    "군집",
    "제어",
    "도주형",
}
MONSTER_BEHAVIOR_MOTIVATIONS = {
    "영역 방어",
    "사냥",
    "먹이",
    "임무 수행",
    "개체 보호",
    "집단 보호",
    "종교적 행동",
    "관찰",
    "포획",
    "제거",
    "쾌락",
}


def _repo_url(repo_path: str) -> str:
    repository = load_config()["repository"]
    return f"https://github.com/{repository}/blob/main/{repo_path}"


def _dataset_url(path: Path) -> str:
    return _repo_url(path.relative_to(ROOT).as_posix())


def _runtime_url(data: dict[str, Any], path: Path) -> str:
    runtime = data.get("runtime_authority")
    return _repo_url(runtime) if isinstance(runtime, str) and runtime else _dataset_url(path)


def _damage_expression(damage: dict[str, Any]) -> str:
    count = int(damage.get("count", 0))
    size = int(damage.get("size", 0))
    ability = str(damage.get("ability", ""))
    if ability == "best_str_dex":
        ability = "best(STR, DEX)"
    suffix = f" + {ability}" if ability else ""
    return f"{count}d{size}{suffix}"


def _pattern_count(part: dict[str, Any]) -> int:
    if part.get("id"):
        return 1
    pattern = str(part.get("pattern", ""))
    match = re.search(r"(\d+)\.\.(\d+)", pattern)
    if match:
        return int(match.group(2)) - int(match.group(1)) + 1
    match = re.search(r"_x(\d+)$", pattern)
    return int(match.group(1)) if match else 1


def _body_classification(body_id: str) -> str:
    if body_id == "human":
        return "인간형"
    if body_id in {"quadruped_canine", "quadruped", "lizard"}:
        return "4족보행형"
    return "비인간형"


def _body_name(body_id: str) -> str:
    names = {
        "human": "Human",
        "quadruped_canine": "Canine Quadruped",
        "quadruped": "Quadruped",
        "beetle": "Beetle",
        "lizard": "Lizard",
        "spider": "Spider",
        "crab": "Crab",
    }
    return names.get(body_id, body_id.replace("_", " ").title())


def _normalize_body_templates_v2(data: dict[str, Any], path: Path) -> list[dict[str, Any]]:
    templates = data.get("templates")
    if not isinstance(templates, list):
        raise SyncError(f"Invalid v2 body template dataset: {path}")
    result: list[dict[str, Any]] = []
    source_url = _runtime_url(data, path)
    for template in templates:
        parts = template.get("parts", [])
        if not isinstance(parts, list):
            raise SyncError(f"Body template parts must be a list: {template.get('id')}")
        capabilities: list[str] = []
        attack_parts: list[str] = []
        part_count = 0
        locomotion_count = 0
        for part in parts:
            repeat = _pattern_count(part)
            part_count += repeat
            functions = [str(value) for value in part.get("functions", [])]
            if "locomotion" in functions:
                locomotion_count += repeat
            attack_functions = [value for value in functions if value != "locomotion"]
            if attack_functions:
                for capability in attack_functions:
                    if capability not in capabilities:
                        capabilities.append(capability)
                attack_parts.append(str(part.get("id") or part.get("pattern") or "?"))
        body_id = str(template.get("id", ""))
        result.append({
            "id": body_id,
            "name": _body_name(body_id),
            "status": "구현 완료",
            "classification": _body_classification(body_id),
            "body_size": None,
            "attack_capability": ", ".join(capabilities) or "-",
            "attack_part": ", ".join(attack_parts) or "-",
            "part_count": part_count,
            "locomotion_part_count": locomotion_count,
            "default_armored_parts": [],
            "parts": parts,
            "source_url": source_url,
            "notes": [
                "Body Size는 현재 ActorDefinition/CombatSpecies 쪽 속성이므로 템플릿 공통 숫자로 강제하지 않는다.",
                "기본 body-part armor는 없으며 자연 방어와 장비 coverage가 Actor에 적용된다.",
            ],
        })
    return result


def _normalize_equipment_v2(data: dict[str, Any], path: Path) -> list[dict[str, Any]]:
    weapons = data.get("weapons")
    armors = data.get("armor")
    if not isinstance(weapons, list) or not isinstance(armors, list):
        raise SyncError(f"Invalid v2 equipment dataset: {path}")
    source_url = _runtime_url(data, path)
    normal_cost = int(data.get("normal_melee_action_cost", 1000))
    armor_profiles = {
        str(profile["id"]): profile
        for profile in data.get("armor_profiles", [])
        if isinstance(profile, dict) and profile.get("id")
    }
    result: list[dict[str, Any]] = []

    def armor_profile_summary(profile_id: str) -> str:
        profile = armor_profiles.get(profile_id, {})
        multipliers = profile.get("multipliers", {})
        parts = [
            f"{damage_type} ×{float(multipliers[damage_type]):.1f}"
            for damage_type in ("Cut", "Puncture", "Blunt")
            if damage_type in multipliers
        ]
        parts.append(f"default ×{float(profile.get('default_multiplier', 1.0)):.1f}")
        return "; ".join(parts) if profile else ""

    for weapon in weapons:
        damage = weapon.get("damage", {})
        formula = _damage_expression(damage)
        properties = ", ".join(str(value) for value in weapon.get("properties", [])) or "없음"
        weapon_actions = []
        for action in weapon.get("weapon_actions", []):
            multiplier = float(action.get("cost_multiplier", 1.0))
            changes = []
            if action.get("damage_type_override"):
                changes.append(f"type={action['damage_type_override']}")
            if action.get("penetration_modifier"):
                changes.append(f"Pen {int(action['penetration_modifier']):+d}")
            if action.get("damage_modifier"):
                changes.append(f"damage {int(action['damage_modifier']):+d}")
            if action.get("situation_modifier"):
                changes.append(f"situation {int(action['situation_modifier']):+d}")
            weapon_actions.append({
                "id": str(action.get("id", "")),
                "display_name": str(action.get("display_name") or action.get("id") or "Unnamed Action"),
                "cost_multiplier": multiplier,
                "resolved_cost": max(1, int(normal_cost * multiplier + 0.5)),
                "changes": ", ".join(changes),
            })
        result.append({
            "id": weapon["id"],
            "name": weapon["name"],
            "status": "구현 완료",
            "classification": "무기",
            "slot": "손",
            "armor": None,
            "damage": None,
            "damage_formula": formula,
            "penetration": weapon.get("penetration"),
            "damage_type": weapon.get("damage_type", ""),
            "action_time_modifier": 0,
            "base_action_cost": normal_cost,
            "required_hands": int(weapon.get("required_hands", 1)),
            "required_capability": str(weapon.get("required_capability", "weapon_manipulation")),
            "weapon_properties": properties,
            "weapon_actions": weapon_actions,
            "weapon_actions_summary": " | ".join(
                f"{action['display_name']} [{action['id']}] — cost ×{action['cost_multiplier']:g} = {action['resolved_cost']}"
                + (f"; {action['changes']}" if action["changes"] else "")
                for action in weapon_actions
            ) or "없음",
            "coverage": [],
            "armor_profile": "",
            "armor_profile_summary": "",
            "application": (
                f"{formula}; {weapon.get('required_capability', 'weapon_manipulation')} "
                f"x{weapon.get('required_hands', 1)}; properties={properties}; "
                f"Normal Melee base cost={normal_cost}"
            ),
            "runtime_equippable": True,
            "source_url": source_url,
        })

    for armor in armors:
        coverage = [str(value) for value in armor.get("coverage", [])]
        coverage_set = set(coverage)
        if coverage_set == {"torso"}:
            slot = "몸통"
        elif coverage_set == {"head"}:
            slot = "머리"
        elif coverage_set == {"arm"}:
            slot = "팔"
        elif coverage_set == {"leg"}:
            slot = "다리"
        else:
            slot = "기타"
        armor_profile = str(armor.get("profile", ""))
        result.append({
            "id": armor["id"],
            "name": armor["name"],
            "status": "구현 완료",
            "classification": "방어구",
            "slot": slot,
            "armor": armor.get("armor"),
            "damage": None,
            "damage_formula": "",
            "penetration": None,
            "damage_type": "",
            "action_time_modifier": 0,
            "base_action_cost": None,
            "required_hands": None,
            "required_capability": "",
            "weapon_properties": "",
            "weapon_actions": [],
            "weapon_actions_summary": "",
            "coverage": coverage,
            "armor_profile": armor_profile,
            "armor_profile_summary": armor_profile_summary(armor_profile),
            "application": (
                f"single-layer coverage: {', '.join(coverage) or '-'}; "
                f"profile={armor_profile or '-'}"
            ),
            "runtime_equippable": True,
            "source_url": source_url,
        })
    return result


def _weapon_catalog_v2() -> dict[str, dict[str, Any]]:
    path = ROOT / "docs" / "datasets" / "equipment.json"
    data = json.loads(path.read_text(encoding="utf-8"))
    if data.get("version") not in {2, 3, 4}:
        return {}
    return {
        str(record["id"]): record
        for record in data.get("weapons", [])
        if isinstance(record, dict) and record.get("id")
    }


def _monster_classification(record: dict[str, Any]) -> str:
    monster_id = str(record.get("id", ""))
    if monster_id == "feral_ape":
        return "인간형(변형)"
    body_id = str(record.get("body_template_id", ""))
    if body_id == "human":
        return "인간형"
    if body_id in {"quadruped_canine", "quadruped", "lizard"}:
        return "4족보행형"
    if body_id in {"beetle", "spider", "crab"}:
        return "다족"
    return "비정형"


def _monster_taxonomy(record: dict[str, Any], defaults: dict[str, Any], path: Path) -> dict[str, Any]:
    taxonomy = dict(defaults.get("taxonomy", {}))
    record_taxonomy = record.get("taxonomy", {})
    if record_taxonomy is None:
        record_taxonomy = {}
    if not isinstance(record_taxonomy, dict):
        raise SyncError(f"Monster taxonomy must be an object: {record.get('id')} in {path}")
    taxonomy.update(record_taxonomy)

    scalar_fields = {
        "origin": MONSTER_ORIGINS,
        "composition": MONSTER_COMPOSITIONS,
        "cognition": MONSTER_COGNITIONS,
    }
    for field, allowed in scalar_fields.items():
        value = taxonomy.get(field)
        if value is not None and value not in allowed:
            raise SyncError(
                f"Invalid monster taxonomy {field}={value!r}: {record.get('id')} in {path}"
            )

    list_fields = {
        "combat_roles": MONSTER_COMBAT_ROLES,
        "behavior_motivations": MONSTER_BEHAVIOR_MOTIVATIONS,
    }
    for field, allowed in list_fields.items():
        values = taxonomy.get(field, [])
        if values is None:
            values = []
        if not isinstance(values, list) or not all(isinstance(value, str) for value in values):
            raise SyncError(
                f"Monster taxonomy {field} must be a string list: {record.get('id')} in {path}"
            )
        invalid = [value for value in values if value not in allowed]
        if invalid:
            raise SyncError(
                f"Invalid monster taxonomy {field}={invalid!r}: {record.get('id')} in {path}"
            )
        taxonomy[field] = values

    return taxonomy


def _normalize_monsters_v2(data: dict[str, Any], path: Path) -> list[dict[str, Any]]:
    records = data.get("records")
    if not isinstance(records, list):
        raise SyncError(f"Invalid v2 monster dataset: {path}")
    defaults = data.get("defaults", {})
    default_score = int(defaults.get("unspecified_ability_score", 10))
    attack_cost = int(defaults.get("normal_melee_action_cost", 1000))
    source_url = _runtime_url(data, path)
    weapons = _weapon_catalog_v2()
    result: list[dict[str, Any]] = []

    for record in records:
        abilities = {key: default_score for key in ABILITY_KEYS}
        abilities.update({key: int(value) for key, value in record.get("abilities", {}).items() if key in abilities})
        move = record.get("move", [1000, 1400])
        if not isinstance(move, list) or len(move) != 2:
            raise SyncError(f"Monster move must be [cardinal, diagonal]: {record.get('id')}")

        attack = record.get("attack")
        weapon_id = record.get("weapon")
        if isinstance(attack, dict):
            attack_id = str(attack.get("id", ""))
            damage_formula = str(attack.get("damage", ""))
            penetration = attack.get("penetration")
            damage_type = str(attack.get("type", ""))
        elif weapon_id:
            weapon = weapons.get(str(weapon_id))
            if not weapon:
                raise SyncError(f"Monster {record.get('id')} references unknown weapon {weapon_id}")
            attack_id = str(weapon_id)
            damage_formula = _damage_expression(weapon.get("damage", {}))
            penetration = weapon.get("penetration")
            damage_type = str(weapon.get("damage_type", ""))
        else:
            raise SyncError(f"Monster has neither natural attack nor weapon: {record.get('id')}")

        taxonomy = _monster_taxonomy(record, defaults, path)
        armor_items = [str(value) for value in record.get("armor", [])]
        body_summary = (
            f"body={record.get('body_template_id')}; natural armor={record.get('natural_armor', 0)}; "
            f"weapon={weapon_id or 'natural attack'}; equipment armor={', '.join(armor_items) or 'none'}"
        )
        monster_id = str(record.get("id", ""))
        result.append({
            "id": monster_id,
            "name": record.get("name", monster_id),
            "status": "구현 완료",
            "classification": _monster_classification(record),
            "origin": taxonomy.get("origin"),
            "composition": taxonomy.get("composition"),
            "cognition": taxonomy.get("cognition"),
            "combat_roles": taxonomy.get("combat_roles", []),
            "behavior_motivations": taxonomy.get("behavior_motivations", []),
            "hp": record["hp"],
            "abilities": abilities,
            "move_cardinal": int(move[0]),
            "move_diagonal": int(move[1]),
            "attack_cost": attack_cost,
            "base_damage": None,
            "damage_formula": damage_formula,
            "penetration": penetration,
            "aggression": record.get("aggression"),
            "threat_rating": record.get("threat_rating"),
            "attack_id": attack_id,
            "damage_type": damage_type,
            "ai_policy": record.get("ai_policy", ""),
            "body_summary": body_summary,
            "body_template_id": record.get("body_template_id"),
            "threat_record_ids": [f"{monster_id}_tr_v0"],
            "source_url": source_url,
            "notes": [
                "기본 피해 숫자는 주사위식을 평균값으로 축약하지 않기 위해 비워 둔다.",
                f"정확한 피해식: {damage_formula}",
            ],
        })
    return result


def _normalize_skills_v2(data: dict[str, Any], path: Path) -> list[dict[str, Any]]:
    records = data.get("records")
    if not isinstance(records, list):
        raise SyncError(f"Invalid v2 skill dataset: {path}")
    result: list[dict[str, Any]] = []
    for record in records:
        result.append({
            "id": record["id"],
            "name": record["name"],
            "status": record.get("status", "구현 완료"),
            "classification": "기본 공격",
            "user": "Player/NPC 공통 production Action",
            "time_cost": record.get("time_cost"),
            "range": record.get("range"),
            "base_damage": None,
            "penetration": None,
            "resource_cost": "없음",
            "check_formula": record.get("check_formula", ""),
            "damage_formula": record.get("damage_formula", ""),
            "damage_type": "AttackDefinition에 따라 Sharp/Blunt",
            "requirements": record.get("requirements", ""),
            "ai_use": True,
            "milestones": record.get("milestones", ""),
            "source_url": _repo_url("time_cost/actions/attack_action.gd"),
            "notes": list(record.get("notes", [])),
        })
    return result


def _normalize_threat_v2(data: dict[str, Any], path: Path) -> list[dict[str, Any]]:
    records = data.get("records")
    if not isinstance(records, list):
        raise SyncError(f"Invalid v2 Threat dataset: {path}")
    model = data.get("model_contract", {})
    model_version = str(model.get("id", "TR-v0"))
    protocol = str(model.get("protocol", "side_swap_v1"))
    monster_path = ROOT / "docs" / "datasets" / "monsters.json"
    monster_data = json.loads(monster_path.read_text(encoding="utf-8"))
    monsters = {
        record["id"]: record
        for record in _normalize_monsters_v2(monster_data, monster_path)
    }
    result: list[dict[str, Any]] = []
    for record in records:
        monster_id = str(record.get("monster_id", ""))
        monster = monsters.get(monster_id)
        if not monster:
            raise SyncError(f"Threat record references unknown monster: {monster_id}")
        result.append({
            "id": f"{monster_id}_tr_v0",
            "monster_id": monster_id,
            "name": f"{monster['name']} — {model_version}",
            "status": "측정 대기",
            "model_version": model_version,
            "static_score": record.get("static_score"),
            "simulation_score": record.get("simulation_score"),
            "final_threat_rating": record.get("final_threat_rating"),
            "baseline": "미정 — benchmark profile / pairwise calibration 후 정의",
            "runs": 0,
            "seed_range": "",
            "confidence_note": "M024 smoke는 실행 검증 전용이며 Threat calibration 결과가 아니다.",
            "offense_evidence": (
                f"{monster['damage_formula']}; Pen {monster['penetration']}; "
                f"normal melee cost {monster['attack_cost']}"
            ),
            "survival_evidence": f"HP {monster['hp']}; {monster['body_summary']}",
            "behavior_evidence": (
                f"move {monster['move_cardinal']}/{monster['move_diagonal']}; "
                f"AI {monster['ai_policy']}; protocol {protocol}"
            ),
            "source_url": _repo_url("time_cost/simulation/combat_batch_runner.gd"),
            "notes": [
                "정적/시뮬레이션/최종 Threat 점수는 calibration 전까지 null을 유지한다.",
                "M024 paired smoke는 production 경로가 정상 동작하는지만 검증했다.",
            ],
        })
    return result


def load_dataset(path: Path, kind: str) -> list[dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8"))
    version = data.get("version")

    if version == 1:
        records = data.get("records")
        if not isinstance(records, list):
            raise SyncError(f"Invalid v1 dataset: {path}")
    elif version in {2, 3, 4}:
        if kind == "equipment" and version in {2, 3, 4}:
            records = _normalize_equipment_v2(data, path)
        elif kind == "monsters" and version in {2, 3}:
            records = _normalize_monsters_v2(data, path)
        elif version == 2 and kind == "body_templates":
            records = _normalize_body_templates_v2(data, path)
        elif version == 2 and kind == "skills":
            records = _normalize_skills_v2(data, path)
        elif version == 2 and kind == "threat_ratings":
            records = _normalize_threat_v2(data, path)
        else:
            raise SyncError(f"Unsupported {kind} dataset version {version!r}: {path}")
    else:
        raise SyncError(f"Unsupported dataset version {version!r}: {path}")

    ids = [record.get("id") for record in records]
    if not all(isinstance(value, str) and value for value in ids):
        raise SyncError(f"Dataset IDs must be non-empty strings: {path}")
    if len(ids) != len(set(ids)):
        raise SyncError(f"Dataset IDs must be unique: {path}")
    return records


def sync_specs(client: NotionClient, config: dict[str, Any], records: list[dict[str, Any]]) -> None:
    data_source_id = config["specs"]["data_source_id"]
    existing = source_map(client, data_source_id)
    repository = config["repository"]

    for record in records:
        meta = record["meta"]
        source = record["source"]
        properties = {
            "설계": title_prop(record["title"]),
            "상태": {"select": {"name": meta["status"]}},
            "영역": {"multi_select": [{"name": value} for value in meta["areas"]]},
            "유형": {"select": {"name": meta["type"]}},
            "관련 시스템": text_prop(meta["systems"]),
            "관련 마일스톤": text_prop(meta["milestones"]),
            "코드 위치": text_prop(", ".join(meta["code_paths"])),
            "소스 파일": text_prop(source),
            "원문": {"url": f"https://github.com/{repository}/blob/main/{source}"},
            "마지막 확인": {"date": {"start": date.today().isoformat()}},
            "다이어그램": {"checkbox": True},
        }
        blocks = [
            wiki.managed_notice(source),
            *markdown_blocks(record["body"], record["path"], repository),
        ]
        upsert_page(client, data_source_id, existing, source, properties, "📐", blocks)


def monster_properties(record: dict[str, Any], source: str) -> dict[str, Any]:
    abilities = record["abilities"]
    return {
        "몬스터": title_prop(record["name"]),
        "ID": text_prop(record["id"]),
        "상태": {"select": {"name": record["status"]}},
        "신체 구조": {"select": {"name": record["classification"]}},
        "기원": {"select": {"name": record["origin"]}} if record.get("origin") else {"select": None},
        "구성": {"select": {"name": record["composition"]}} if record.get("composition") else {"select": None},
        "지능": {"select": {"name": record["cognition"]}} if record.get("cognition") else {"select": None},
        "전투 역할": {"multi_select": [{"name": value} for value in record.get("combat_roles", [])]},
        "행동 동기": {
            "multi_select": [{"name": value} for value in record.get("behavior_motivations", [])]
        },
        "HP": {"number": record["hp"]},
        "STR": {"number": abilities["STR"]},
        "DEX": {"number": abilities["DEX"]},
        "CON": {"number": abilities["CON"]},
        "INT": {"number": abilities["INT"]},
        "WIS": {"number": abilities["WIS"]},
        "CHA": {"number": abilities["CHA"]},
        "직선 이동 비용": {"number": record["move_cardinal"]},
        "대각선 이동 비용": {"number": record["move_diagonal"]},
        "공격 시간 비용": {"number": record["attack_cost"]},
        "기본 피해": {"number": record["base_damage"]},
        "관통": {"number": record["penetration"]},
        "공격성": {"number": record["aggression"]},
        "Threat Rating": {"number": record.get("threat_rating")},
        "공격 ID": text_prop(record["attack_id"]),
        "피해 유형": text_prop(record["damage_type"]),
        "AI 정책": text_prop(record["ai_policy"]),
        "신체/방어 요약": text_prop(record["body_summary"]),
        "소스 파일": text_prop(source),
        "원문": {"url": record["source_url"]},
        "마지막 확인": {"date": {"start": date.today().isoformat()}},
    }


def skill_properties(record: dict[str, Any], source: str) -> dict[str, Any]:
    return {
        "스킬": title_prop(record["name"]),
        "ID": text_prop(record["id"]),
        "상태": {"select": {"name": record["status"]}},
        "분류": {"select": {"name": record["classification"]}},
        "사용자": text_prop(record["user"]),
        "시간 비용": {"number": record["time_cost"]},
        "사거리": {"number": record["range"]},
        "기본 피해": {"number": record["base_damage"]},
        "관통": {"number": record["penetration"]},
        "자원 비용": text_prop(record["resource_cost"]),
        "판정식": text_prop(record["check_formula"]),
        "피해 유형": text_prop(record["damage_type"]),
        "요구 조건": text_prop(record["requirements"]),
        "AI 사용": {"checkbox": bool(record["ai_use"])},
        "관련 마일스톤": text_prop(record["milestones"]),
        "소스 파일": text_prop(source),
        "원문": {"url": record["source_url"]},
        "마지막 확인": {"date": {"start": date.today().isoformat()}},
    }


def body_template_properties(record: dict[str, Any], source: str) -> dict[str, Any]:
    return {
        "신체 템플릿": title_prop(record["name"]),
        "키": text_prop(record["id"]),
        "상태": {"select": {"name": record["status"]}},
        "분류": {"select": {"name": record["classification"]}},
        "Body Size": {"number": record["body_size"]},
        "기본 공격 기능": text_prop(record["attack_capability"]),
        "기본 공격 부위": text_prop(record["attack_part"]),
        "부위 수": {"number": record["part_count"]},
        "이동 기여 부위 수": {"number": record["locomotion_part_count"]},
        "기본 방어 부위": text_prop(", ".join(record.get("default_armored_parts", []))),
        "소스 파일": text_prop(source),
        "원문": {"url": record["source_url"]},
        "마지막 확인": {"date": {"start": date.today().isoformat()}},
    }


def equipment_properties(record: dict[str, Any], source: str) -> dict[str, Any]:
    return {
        "장비": title_prop(record["name"]),
        "키": text_prop(record["id"]),
        "상태": {"select": {"name": record["status"]}},
        "분류": {"select": {"name": record["classification"]}},
        "슬롯": {"select": {"name": record["slot"]}},
        "방어력": {"number": record.get("armor")},
        "피해": {"number": record.get("damage")},
        "피해식": text_prop(record.get("damage_formula", "")),
        "관통": {"number": record.get("penetration")},
        "피해 유형": text_prop(record.get("damage_type", "")),
        "행동 시간 수정": {"number": record.get("action_time_modifier", 0)},
        "기본 공격 비용": {"number": record.get("base_action_cost")},
        "필요 손 수": {"number": record.get("required_hands")},
        "요구 기능": text_prop(record.get("required_capability", "")),
        "무기 속성": text_prop(record.get("weapon_properties", "")),
        "Weapon Actions": text_prop(record.get("weapon_actions_summary", "")),
        "커버리지": text_prop(", ".join(record.get("coverage", []))),
        "방어 프로필": text_prop(record.get("armor_profile", "")),
        "프로필 배율": text_prop(record.get("armor_profile_summary", "")),
        "적용 방식": text_prop(record["application"]),
        "런타임 장착 가능": {"checkbox": bool(record["runtime_equippable"])},
        "소스 파일": text_prop(source),
        "원문": {"url": record["source_url"]},
        "마지막 확인": {"date": {"start": date.today().isoformat()}},
    }


def status_trait_properties(record: dict[str, Any], source: str) -> dict[str, Any]:
    return {
        "상태 · 특성": title_prop(record["name"]),
        "키": text_prop(record["id"]),
        "상태": {"select": {"name": record["status"]}},
        "유형": {"select": {"name": record["type"]}},
        "범위": {"select": {"name": record["scope"]}},
        "값 모델": text_prop(record["value_model"]),
        "공식": text_prop(record["formula"]),
        "게임 효과": text_prop(record["game_effect"]),
        "지속/중첩": text_prop(record["duration_stacking"]),
        "플레이어 노출": text_prop(record["player_visibility"]),
        "소스 파일": text_prop(source),
        "원문": {"url": record["source_url"]},
        "마지막 확인": {"date": {"start": date.today().isoformat()}},
    }


def threat_rating_properties(record: dict[str, Any], source: str) -> dict[str, Any]:
    return {
        "Threat 기록": title_prop(record["name"]),
        "몬스터 키": text_prop(record["monster_id"]),
        "상태": {"select": {"name": record["status"]}},
        "모델 버전": text_prop(record["model_version"]),
        "정적 점수": {"number": record.get("static_score")},
        "시뮬레이션 점수": {"number": record.get("simulation_score")},
        "최종 Threat Rating": {"number": record.get("final_threat_rating")},
        "기준 상대": text_prop(record["baseline"]),
        "실행 횟수": {"number": record["runs"]},
        "Seed 범위": text_prop(record.get("seed_range", "")),
        "신뢰도/주의": text_prop(record["confidence_note"]),
        "공격 근거": text_prop(record["offense_evidence"]),
        "생존 근거": text_prop(record["survival_evidence"]),
        "행동/특수 근거": text_prop(record["behavior_evidence"]),
        "소스 파일": text_prop(source),
        "원문": {"url": record["source_url"]},
        "마지막 확인": {"date": {"start": date.today().isoformat()}},
    }


def dataset_blocks(source: str, record: dict[str, Any], kind: str) -> list[dict[str, Any]]:
    blocks = [wiki.managed_notice(source)]

    if kind == "body_templates":
        blocks.append(wiki.text_block("heading_2", "부위"))
        for part in record.get("parts", []):
            label = str(part.get("id") or part.get("pattern") or "?")
            armor = "없음" if part.get("armor") is None else str(part["armor"])
            functions = ", ".join(str(value) for value in part.get("functions", [])) or "-"
            parent = part.get("parent") or "-"
            hit_weight = part.get("hit_weight", part.get("hit_weight_each", "?"))
            text = (
                f"{label} — parent {parent}; integrity {part['integrity']}; "
                f"hit weight {hit_weight}; armor {armor}; functions {functions}"
            )
            blocks.append(wiki.text_block("bulleted_list_item", text))
    elif kind == "monsters":
        blocks.append(wiki.text_block("heading_2", "전투 데이터"))
        blocks.append(wiki.text_block(
            "paragraph",
            f"damage {record.get('damage_formula', '-')}; attack {record.get('attack_id', '-')}; "
            f"Pen {record.get('penetration')}; normal attack cost {record.get('attack_cost')}",
        ))
        blocks.append(wiki.text_block("paragraph", record.get("body_summary", "")))
    elif kind == "skills":
        blocks.append(wiki.text_block("heading_2", "피해"))
        blocks.append(wiki.text_block(
            "paragraph",
            record.get("damage_formula") or "피해는 선택된 AttackDefinition에서 결정된다.",
        ))
    elif kind == "equipment":
        if record["classification"] == "무기":
            blocks.append(wiki.text_block("heading_2", "기본 공격"))
            blocks.append(wiki.text_block(
                "paragraph",
                f"{record.get('damage_formula', '-')}; {record.get('damage_type', '-')}; "
                f"Pen {record.get('penetration')}; cost {record.get('base_action_cost')}",
            ))
            blocks.append(wiki.text_block("heading_2", "사용 조건"))
            blocks.append(wiki.text_block(
                "paragraph",
                f"{record.get('required_capability', '-')} x{record.get('required_hands')}; "
                f"properties={record.get('weapon_properties') or '없음'}",
            ))
            blocks.append(wiki.text_block("heading_2", "Weapon Actions"))
            actions = record.get("weapon_actions", [])
            if actions:
                for action in actions:
                    text = (
                        f"{action['display_name']} [{action['id']}] — "
                        f"cost ×{action['cost_multiplier']:g} = {action['resolved_cost']}"
                    )
                    if action.get("changes"):
                        text += f"; {action['changes']}"
                    blocks.append(wiki.text_block("bulleted_list_item", text))
            else:
                blocks.append(wiki.text_block("paragraph", "없음"))
        else:
            blocks.append(wiki.text_block("heading_2", "방어"))
            blocks.append(wiki.text_block(
                "paragraph",
                f"armor {record.get('armor')}; coverage "
                f"{', '.join(record.get('coverage', [])) or '-'}; "
                f"profile {record.get('armor_profile') or '-'}",
            ))
            blocks.append(wiki.text_block("heading_2", "Armor Profile"))
            blocks.append(wiki.text_block(
                "paragraph",
                record.get("armor_profile_summary") or "프로필 배율 없음",
            ))
        blocks.append(wiki.text_block("heading_2", "적용"))
        blocks.append(wiki.text_block("paragraph", record.get("application", "")))
    elif kind == "threat_ratings":
        blocks.append(wiki.text_block("heading_2", "측정 상태"))
        blocks.append(wiki.text_block(
            "paragraph",
            f"model {record['model_version']}; runs {record['runs']}; "
            f"final rating {record.get('final_threat_rating')}",
        ))

    notes = record.get("notes", [])
    if notes:
        blocks.append(wiki.text_block("heading_2", "기록"))
        for note in notes:
            blocks.append(wiki.text_block("bulleted_list_item", str(note)))
    return blocks


def sync_dataset(
    client: NotionClient,
    data_source_id: str,
    file_path: str,
    records: list[dict[str, Any]],
    kind: str,
) -> dict[str, str]:
    existing = source_map(client, data_source_id)
    pages: dict[str, str] = {}
    active_sources: set[str] = set()
    for record in records:
        source = f"{file_path}#{record['id']}"
        active_sources.add(source)
        if kind == "monsters":
            properties = monster_properties(record, source)
            icon = "🐀"
        elif kind == "skills":
            properties = skill_properties(record, source)
            icon = "⚔️"
        elif kind == "body_templates":
            properties = body_template_properties(record, source)
            icon = "🦴"
        elif kind == "equipment":
            properties = equipment_properties(record, source)
            icon = "🛡️"
        elif kind == "statuses_traits":
            properties = status_trait_properties(record, source)
            icon = "🧬"
        elif kind == "threat_ratings":
            properties = threat_rating_properties(record, source)
            icon = "📈"
        else:
            raise SyncError(f"Unknown dataset kind: {kind}")
        pages[record["id"]] = upsert_page(
            client,
            data_source_id,
            existing,
            source,
            properties,
            icon,
            dataset_blocks(source, record, kind),
        )

    managed_prefix = f"{file_path}#"
    for source, page_id in existing.items():
        if source.startswith(managed_prefix) and source not in active_sources:
            client.request("PATCH", f"/pages/{page_id}", {"in_trash": True})
            print(f"archived stale: {source}")
    return pages


def sync_monster_relations(
    client: NotionClient,
    monsters: list[dict[str, Any]],
    page_maps: dict[str, dict[str, str]],
) -> None:
    monster_pages = page_maps.get("monsters", {})
    body_pages = page_maps.get("body_templates", {})
    threat_pages = page_maps.get("threat_ratings", {})

    for record in monsters:
        page_id = monster_pages.get(record["id"])
        if not page_id:
            continue

        body_id = record.get("body_template_id")
        threat_ids = record.get("threat_record_ids", [])
        properties: dict[str, Any] = {}

        if body_id:
            related = body_pages.get(body_id)
            if not related:
                raise SyncError(f"Monster {record['id']} references unknown body template {body_id}")
            properties["신체 템플릿"] = {"relation": [{"id": related}]}

        if threat_ids:
            relation = []
            for threat_id in threat_ids:
                related = threat_pages.get(threat_id)
                if not related:
                    raise SyncError(f"Monster {record['id']} references unknown Threat record {threat_id}")
                relation.append({"id": related})
            properties["Threat 기록"] = {"relation": relation}

        if properties:
            client.request("PATCH", f"/pages/{page_id}", {"properties": properties})


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true", help="validate without network access")
    args = parser.parse_args()

    # Reject stale mirrors before validation or any network writes.
    from check_combat_datasets import check as check_combat_datasets
    check_combat_datasets()

    config = load_config()
    specs = discover_specs(config)
    datasets: dict[str, list[dict[str, Any]]] = {}
    for kind, dataset_config in config["datasets"].items():
        datasets[kind] = load_dataset(ROOT / dataset_config["file"], kind)

    if args.check:
        details = ", ".join(f"{kind}={len(records)}" for kind, records in datasets.items())
        print(f"OK: {len(specs)} specs; {details}")
        return 0

    token = os.environ.get("NOTION_TOKEN", "").strip()
    if not token:
        raise SyncError("NOTION_TOKEN is required for a real sync")

    client = NotionClient(token, config.get("notion_api_version", "2026-03-11"))
    sync_specs(client, config, specs)
    page_maps: dict[str, dict[str, str]] = {}
    for kind, records in datasets.items():
        dataset_config = config["datasets"][kind]
        page_maps[kind] = sync_dataset(
            client,
            dataset_config["data_source_id"],
            dataset_config["file"],
            records,
            kind,
        )
    sync_monster_relations(client, datasets.get("monsters", []), page_maps)
    print("Done: knowledge sync complete")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except SyncError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise SystemExit(2)
