# Primary attribute runtime continuation record

- Date: 2026-10-01 KST.
- Base: `005c7a6` (`feat(attributes): derive max hp from CON`).
- Branch: `codex/primary-attribute-runtime`; checkout: `C:/GameDev/primary-attribute-runtime`.
- Original checkout: `C:/GameDev/새-게임-프로젝트`, remains on `codex/con-hp-scaling`.
- Original unrelated changes: body_templates.json, project.godot, twelve EverRogue imports.
  SHA256 preservation snapshot: `C:/GameDev/primary-attribute-original-files.json`.
- Read source-of-truth decisions, Actor/stat/attack/action/combat/query/text implementation,
  AGENTS.md, roadmap, milestone index and relevant M031 milestone.

## Agreed scope and architecture

- Allow any of the six primary attributes or legacy best_str_dex in AttackDefinition.
- Actor owns query-time resolved primary modifier conversion using
  `AbilityScores.modifier(int(resolved score))`; no cache.
- AttackDefinition chooses one primary; best_str_dex compares resolved modifiers and
  retains STR on ties. TimeCostGame.attack_breakdown remains the common runtime/UI boundary.
- WeaponActionDefinition gains an optional sparse ability_rule_override on the temporary
  attack copy. No production content additions or new ability/trait framework.
- Defender DV retains `10 + DEX modifier`, using resolved DEX.
- Preserve HP/CON, Body, costs, scheduler, AI, event schema and RNG ordering.
- Audit exporter/offline consumer; regenerate derived JSON through exporter only.
- Add focused production-path tests, keep old replay/golden fixtures, run full check.
- Update decisions/spec/wiki/diagrams and roadmap status; explicit stage, commit and push.
  No main merge.

## Progress

- Implemented runtime selection/conversion/defense and sparse action override.
- Actor weapon/natural-attack and execution copies now use DEEP_DUPLICATE_ALL to
  isolate external nested Resources as well as in-memory synthetic definitions.
- Character query/Inspector and debug labels use resolved modifier breakdowns.
- Exporter preserves optional nonempty override; offline consumer keeps and displays it.
- Relevant decisions/spec/wiki/diagrams and M033/roadmap/index updated.

## Verification so far

- Godot 4.7.2 editor parse/import passed.
- New focused `test_primary_attribute_runtime.gd`: **571 assertions passed**.
  All six rules; legacy best/ties; signed/fractional scores; add/remove/clear;
  one-primary hit/damage; real defender DV; action-only override; source/sibling/
  external Resource isolation; query/Inspector consistency and pure queries;
  rejected malformed/base/action/Body cases; exact D20/location/dice/armor RNG;
  native Resource/real-exporter JSON round trip; CON/HP regression boundaries.
- Existing focused M031 **405**, Character query **285**, modifier tones **53**,
  M027 and M024 suites passed. CON/HP and historical M027 replay **3 seeds** passed
  against untouched fixtures. No fixture capture invoked.
- New offline dataset tests (2) plus existing Notion attribute mock tests (3) passed.
- Dataset fingerprint / offline knowledge **11 specs, 6 datasets** / wiki **15** pass.
- Exporter regenerated manifest source fingerprints only; equipment.json and
  monsters.json byte-identical. Authoritative production content unchanged.
- Full `bash tools/check_godot.sh` **passed**: editor import, main startup, all
  **30 scripts**, exact generated dataset check; exit 0, no ERROR/FAIL/SCRIPT ERROR.
  log: `C:/GameDev/primary-attribute-full-check.log`.
- Other logs: `C:/GameDev/primary-attribute-{import,focused,export}.log`.
- Initial baseline shell-loop invocation had a shell variable forwarding error
  (`res://tests/.gd`) and provided no test evidence. Subsequent focused commands
  used the console binary directly; above results are from completed valid runs.
- Final diff/whitespace audit passed. Original unrelated-file SHA256 audit passed:
  both dirty tracked files and all twelve imports unchanged (14 files).
- Body/CombatRules/AI/Scheduler/cost code, production `.tres`, all golden/replay
  fixtures, project.godot and body_templates.json unchanged in this branch.
- Delivery: explicit file staging and one new commit/push on the requested branch;
  final SHA and push evidence retained in `C:/GameDev/primary-attribute-delivery.md`.
  Original checkout branch/state preserved; no main merge or history rewrite.
- No manual GUI/play, live Notion or package claim.

## Changed files

- Runtime: game/actors/actor.gd; game/combat/attack_definition.gd;
  game/combat/weapon_action_definition.gd; game/time_cost_game.gd.
- Presentation: game/ui/character_overview_query.gd;
  game/ui/character_overview_text.gd; scenes/debug/combat_debug_panel.gd.
- Export/mirror: tools/export_combat_datasets.gd; tools/sync_notion_knowledge.py;
  generated docs/datasets/combat_content_manifest.json (five source hashes only).
- Tests: tests/test_primary_attribute_runtime.gd and UID;
  tools/test_primary_attribute_dataset.py. Existing tests/fixtures preserved.
- Decisions: docs/decisions/primary_attribute_semantics.md; attributes_effects.md;
  physical_combat_weapon_actions.md.
- Specs/wiki: docs/specs/character_overview.md; combat_resolution.md;
  docs/wiki/character_screen.md; attributes_effects.md; combat_body.md.
- Diagrams: tools/render_doc_diagrams.py; docs/diagrams/character_overview.svg;
  combat_resolution.svg.
- Status/continuation: docs/ROADMAP.md; docs/MILESTONES.md;
  docs/milestones/M033_primary_attribute_runtime.md; this record.

## Deferred and validation limits

No detection/stealth/traps, dialogue/crafting/research/language/cognition simulator,
fear/panic/compulsion/status framework, psionic or Trait/Skill framework. No AI-policy
changes or INT tactical scaling, DEX Action Cost scaling, independent Accuracy/Dodge,
new production attacks, or generic governing expression language. Existing CON/HP,
movement_speed/Body/ActionCostResolver/cost_percent boundaries remain unchanged.
Headless input/geometry/Inspector tests do not establish manual visual readability,
gameplay/balance acceptance, live Notion or exported-package behavior.
