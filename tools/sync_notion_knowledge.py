#!/usr/bin/env python3
"""Sync detailed specs plus documented monster/skill catalogs to Notion."""

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


def load_dataset(path: Path) -> list[dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8"))
    if data.get("version") != 1 or not isinstance(data.get("records"), list):
        raise SyncError(f"Invalid dataset: {path}")
    ids = [record.get("id") for record in data["records"]]
    if not all(isinstance(value, str) and value for value in ids):
        raise SyncError(f"Dataset IDs must be non-empty strings: {path}")
    if len(ids) != len(set(ids)):
        raise SyncError(f"Dataset IDs must be unique: {path}")
    return data["records"]


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
        "분류": {"select": {"name": record["classification"]}},
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


def dataset_blocks(source: str, record: dict[str, Any]) -> list[dict[str, Any]]:
    blocks = [wiki.managed_notice(source)]
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
) -> None:
    existing = source_map(client, data_source_id)
    for record in records:
        source = f"{file_path}#{record['id']}"
        if kind == "monsters":
            properties = monster_properties(record, source)
            icon = "🐀"
        elif kind == "skills":
            properties = skill_properties(record, source)
            icon = "⚔️"
        else:
            raise SyncError(f"Unknown dataset kind: {kind}")
        upsert_page(
            client,
            data_source_id,
            existing,
            source,
            properties,
            icon,
            dataset_blocks(source, record),
        )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--check", action="store_true", help="validate without network access")
    args = parser.parse_args()

    config = load_config()
    specs = discover_specs(config)
    datasets: dict[str, list[dict[str, Any]]] = {}
    for kind, dataset_config in config["datasets"].items():
        datasets[kind] = load_dataset(ROOT / dataset_config["file"])

    if args.check:
        details = ", ".join(f"{kind}={len(records)}" for kind, records in datasets.items())
        print(f"OK: {len(specs)} specs; {details}")
        return 0

    token = os.environ.get("NOTION_TOKEN", "").strip()
    if not token:
        raise SyncError("NOTION_TOKEN is required for a real sync")

    client = NotionClient(token, config.get("notion_api_version", "2026-03-11"))
    sync_specs(client, config, specs)
    for kind, records in datasets.items():
        dataset_config = config["datasets"][kind]
        sync_dataset(
            client,
            dataset_config["data_source_id"],
            dataset_config["file"],
            records,
            kind,
        )
    print("Done: knowledge sync complete")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except SyncError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise SystemExit(2)
