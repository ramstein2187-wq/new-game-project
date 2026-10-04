# M035 — Procedural Naming v1

Date: 2026-10-05. Status: **Complete on task branch; not merged main** on `codex/procedural-naming-v1`.
Base: fetched `origin/main` `5c527e2c626fc0262977c6cfcfbe9285a3d24239`.
M034 was the highest registered milestone on this base; M035 is newly registered here.

## Scope and completion gates

Native authored Resources; locale-independent serializable canonical names;
phonetic/semantic/mixed and numeric facility names; en/ko grammar; unchanged
SeedDeriver with bounded independent selection/reroll streams; validation and
reserved-result hooks. Only original synthetic vocabulary, no outside name data.
Focused tests, fixed-seed preview, full `bash tools/check_godot.sh`, durable
decision/spec/wiki, final diff/user-file preservation audit, explicit commit/push.
Never merge main. UI localization, NPC/site/faction/save integration are deferred.

## Progress / resume record

- Read latest project rules, roadmap/index, seed/content decisions, existing
  SeedDeriver, provenance/reference records and wiki conventions. No existing
  procedural naming/localization foundation found.
- Existing user checkout has unrelated tracked/untracked edits; untouched.
  External task work record and original SHA256 baseline live in `C:\GameDev`.
- Plan: small Resource definitions and an indexed validated catalog snapshot;
  slot components as serializable dictionaries; generation and rendering separate.
- Implemented Resource token/slot/template/culture/content definitions, indexed
  owned catalog, canonical GeneratedName dictionary/JSON/Resource serialization,
  independent NameGenerator and pure NameRenderer. Native authored forms/grammar
  support en/ko and data-only locale extension. SeedDeriver unchanged.
- Registered decision/spec + standalone SVG diagram/wiki/API examples. All 24
  phonetic/14 semantic tokens and six grammars are original synthetic authoring;
  no external naming data or research rows retrieved. THIRD_PARTY audit records it.
- Focused test first exposed StringName dictionary locale keys; validation now
  supports Godot String/StringName keys. Added token-brace injection rejection,
  snapshot/getter isolation, stable slot additions and fixed-seed golden guards.

## Verification (2026-10-05)

- Godot 4.7.2 `tests/test_procedural_naming.gd`: **PASS, 30,266 assertions**,
  including six name types × 1,000 fixed seeds (6,000 generated names). No empty
  display/crash/validation error. Unique English displays per 1,000: person 556,
  settlement 582, semantic 20, mixed 549, possessive 539, facility 987. Tiny semantic
  vocabulary intentionally allows only 20 results; this is not global uniqueness
  or final-language-quality validation.
- `tools/preview_names.gd`: PASS, 18 seed/type pairs printed with canonical/en/ko.
  Seed 74, entity key `preview/entity-7`: Tosewen / 토세웬 (`[to,se,wen]`),
  Tovak / 토바크; Red Ruin / 붉은 폐허; Veymar Reach / 베이마르 변경;
  Fuvak's Reach / 푸바크의 변경; Biological Preservation Array 3530 /
  생물 보존 배열체 3530. Explicit fixtures also verify Veyra's Gate /
  베이라의 관문 and Biological Preservation Array 74 / 생물 보존 배열체 74.
- `bash tools/check_godot.sh`: **PASS, exit 0**, editor import, main-scene startup,
  all 31 test scripts, existing SeedDeriver/replay guards and exact dataset check.
- Existing exporter inventories all `content/`; regenerated manifest adds nine
  naming Resource hashes. Existing equipment/monsters and gameplay values unchanged.
- `python3 tools/sync_notion_wiki.py --check`: PASS, 16 pages; knowledge check:
  PASS, 14 specs; `check_combat_datasets.py`: PASS.
- `tools/check_project_layout.gd`: PASS, 166 resources, 118 script UIDs, seven
  instantiated scenes. Initial clean-checkout audit falsely treated the existing
  capture tool's output directory as a missing dependency; created its ignored
  `.godot/character-overview-captures` directory for the audit. No tracked change.
- Final intent/preservation audit: only new naming runtime/content/tests/preview,
  related docs and exporter-generated fingerprint additions are in task diff.
  All 14 original user-edited/untracked files match recorded SHA256; original
  branch/status unchanged. SeedDeriver and existing gameplay/test sources unchanged.

Local raw logs and external continuation/delivery record are in `C:\GameDev`:
`procedural-naming-{focused,preview,full-check,import,export,layout}.log` and
`procedural-naming-work-record.md`. Task delivery commits/pushes this branch only;
the external work record records the exact commit/push without a self-referential SHA.

## Boundaries

No GUI/manual Inspector or language/lore quality acceptance, exported package,
live Notion sync, NPC/UI/font/localization integration, villages/factions, full
save/load, global uniqueness registry or external DB. Future work is listed as
Candidate in ROADMAP; this branch is not main implementation until authorized merge.
