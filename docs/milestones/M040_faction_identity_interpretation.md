# M040 — Faction identity and cultural interpretation lens

2026-10-06. Complete on `codex/history-generator-v0.3-fixup`; not merged main.

## Goal

Add a small deterministic layer that explains how each current faction frames itself and
interprets the same objective history differently, without creating a full culture generator
or adding new objective history facts.

## Scope / outcome

`FactionIdentityResolver` derives five read-only axes from already generated history:

- continuity stance: heir / reformer / breakaway / new_foundation / outsider
- social anchor: kin / locality / institution / craft / ritual / exchange / refuge
- adaptive stance: preserve / adapt / rebuild / exploit / withdraw
- interpretation mode: pragmatic / skeptical / technical / ritual
- memory frame: continuity / rupture / grievance / debt / warning / opportunity

Formation, political continuity, way of life, regional roles, ancestor loss, signed relation
events, regional pressure, rare legacy events, reuse and discovery provide weighted evidence.
The mapping is intentionally not 1:1, but grievance/debt and other scar-dependent frames
cannot appear without supporting history.

The profile is a pure derived query. It emits no events/effects, does not modify
`HistoricalEntity` or `HistoryState`, and is not serialized as objective state.
Generation3 therefore remains architecture2. Debug output exposes the derived lens and
its event provenance.

V3 Claim wording now uses the lens. Pressure, discovery, rare Core/Observer events,
relationship memories and present sentiment can differ by interpretive mode while preserving
the same canonical evidence. Positive/negative event relation Claims still retain their
recorded delta and present Claims still use accumulated score. Reserved Core purpose,
Observer activation/target selection and unknown discovery Origin remain unresolved.
Legacy generation2 Claim behavior is untouched.

The authored v3 content revision advances from `history-v3-authored-2` to
`history-v3-authored-3` because canonical Claim prose changes; architecture does not.

## Validation

Focused identity suite: 12,983 assertions PASS across 300 profile seeds plus Claim/boundary
checks. It validates deterministic profiles, closed axes, real-event provenance, identity
diversity, different interpretations of shared events, rare legacy interpretation variation,
relation-delta wording, naming isolation and non-serialization of the identity lens.

Full `bash tools/check_godot.sh`: 35 test scripts PASS, including retained v2 history,
v3 topology/population, naming, editor import/parse, main startup and dataset freshness.

Manual seed13 inspection confirmed six present factions receiving different identity/mode/frame
combinations and distinct interpretations of the same Core pressure, later orbital event and
unknown discovery without resolving reserved causes.

## Explicit non-goals

No religion/language/value/economy/culture simulator, ideology model, faction personality
numbers, new social species, player-knowledge propagation, save migration or post-start
cultural evolution. This is a wording/identity lens over existing history only.
