# M034 — CON / Endurance derived Max HP

Status: **Complete on task branch** `codex/con-hp-scaling-integration`; not merged to main.
Base: fetched main `78ab715`, including M033 PR #40 and integration record PR #41.
Source: completed CON/HP branch `005c7a6`, selectively reapplied after architecture review.

## Scope and implementation

Keep original 5% per resolved CON point above/below 10, one final round/minimum 1,
Human Base HP 30, and absolute-damage preservation with no automatic revival.
ActorDefinition owns Base HP; Actor queries the existing resolved-CON path for Max HP.
AbilityScores mutation notifications and Effect mutations enforce lethal state changes;
existing game death/scheduler handling remains authoritative. Inspector explains the same
query including CON Effect provenance. Exporter hp means fresh no-Effect resolved maximum.
M033 semantics are referenced rather than duplicated.

Out of scope: new checks/defense stats, progression, regeneration, wound changes,
AI changes, generalized HP or Attribute framework.

## Validation and handoff

2026-10-02: Godot 4.7.2 full `bash tools/check_godot.sh` **PASS** (exit 0), including
editor import, main startup, all 30 project scripts and exact generated dataset check.
Focused CON/HP test passes 121 assertions: neutral/high/low/fractional CON, additive
Percent + Flat, removal/clear, damage/recovery/clamping/death/reset, effect ownership,
Overview purity, dataset Resources and existing allocation API. M033 attributes/effects
passes 422 assertions; Character query/tone/screen passes 281/53/284; M028 passes 64.
Historical M027 and normalized M024/M018 replay guards pass all 3 seeds, as does the
unchanged original 30-HP fixture from 005c7a6. Current monster records are numerically
unchanged; only hp-meaning notes and source fingerprints change in generated datasets.
Offline wiki (15 pages) and knowledge/spec/dataset (13 specs) checks pass.

The first full run passed every script but rejected stale generated dataset notes/hashes.
The official exporter refreshed them; the final full run passed. No golden was recaptured.

Manual F5/F6 Inspector readability and health feedback/play/balance acceptance,
exported package and live Notion mirror remain unperformed. No direct main merge.

[Work log](../reviews/2026-10-02-con-hp-integration.md),
[decision](../decisions/con_max_hp.md), [state specification](../specs/con_max_hp.md).
