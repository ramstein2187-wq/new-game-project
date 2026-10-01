# M033 — Primary Attribute Runtime

Status: **Complete on task branch** `codex/primary-attribute-runtime`, based on CON/HP
commit `005c7a6`. Main integration is separate.

## Scope

- Six authored governing primary rules plus legacy best_str_dex.
- Resolved score/modifier queries for hit, damage and defender DEX difficulty.
- Sparse per-Weapon-Action ability_rule_override on an isolated execution copy.
- Shared runtime/query/Inspector breakdown, native serialization and offline mirror.
- Existing costs/Body/scheduler/AI/RNG/event and CON/HP contracts preserved.

## Validation and handoff

Focused production-path suite passed **571 assertions**. Full
`bash tools/check_godot.sh` passed editor import, startup, **30 test scripts**
and exact generated dataset check. Existing M031 goldens and M024/M027/CON-HP
replays pass against unchanged fixtures. Offline consumer/schema tests (5),
dataset fingerprints, knowledge (11 specs / 6 datasets) and wiki (15 pages) pass.
Original checkout's 14 unrelated files retain their SHA256 hashes. No fixture recapture.
Detailed progress, evidence and file inventory:
[continuation record](../reviews/2026-10-01-primary-attribute-runtime.md).

## Deferred

PER detection/traps/stealth, INT interactions/crafting/research/language,
WIL fear/compulsion/resistance, psionics, Trait/Skill frameworks, progression,
AI changes, global DEX speed and new production attack content.
Manual GUI/play/readability, live Notion and exported-package acceptance remain separate.
