+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
type = "데이터 모델"
systems = "CanonPolicy / HistoryGenerator / HistoryProjector / HistoryValidator"
milestones = "M036 — codex/history-generator-v0.1; main 미병합"
code_paths = ["game/history/canon_policy.gd", "game/history/history_generator.gd", "game/history/history_projector.gd", "game/history/history_validator.gd", "tools/preview_history.gd"]
diagram = "docs/diagrams/history_generator.svg"
+++
# History Prototype v0.1

![History generation and separate beliefs](../diagrams/history_generator.svg)

## Scope and authority

One region, one precursor state, three present factions, 15/16 recent events,
four ruins, four settlements and nine claims. No gameplay/terrain/Actor changes,
forward simulation, person genealogy, economy, diplomacy engine or runtime Markdown parser.
Repo [world Canon](../lore/world_canon_v0_1.md) and
[generation contract](../lore/history_generation_contract.md) define authored boundaries;
`CanonPolicy` is the runtime counterpart. Notion remains a derived system-doc reading surface
and a separate detailed lore wiki; no live Notion access is needed by generation.

## Responsibilities

| Component | Authority / responsibility |
| --- | --- |
| CanonPolicy | Owned fixed snapshot; LOCKED, RESERVED, GENERATABLE, BELIEF-ONLY; closed local narrative/effect schemas |
| HistoricalEntity | Region, precursor, transient group, faction, settlement; stable ID, label, lifestyle, ancestry, lifecycle event refs |
| HistoricalEvent | ID, relative year, ten bounded event types, actors/location/entities/causes/effects, importance and reviewed narrative key |
| HistoryGenerator | Seeded local cause chains and successor/recent events; creates entity definitions and separate claims |
| HistoryProjector | Replays objective effects into factions, ancestry, relationships, sites, ruins and unresolved discovery records |
| HistoricalClaim | Current claimant, exactly one event/topic target, interpretation, confidence 0..1, minimal type |
| HistoryState | Surviving records with direct source_event_ids; no decorative scar ledger |
| HistoryResult | Seed/version, policy snapshot, entity definitions, timeline, projected present, claims, validation; owned dictionary export |
| HistoryValidator | Schema/reference/lifecycle/ancestry/policy and reprojection checks; caller-provided deterministic replay |
| HistoryNameSource | Optional pure Callable(seed, stable ID, kind); independent fallback label RNG |
| HistoryDebugFormatter / preview_history | Read-only textual report, optional canonical JSON and nonzero validation/usage exit |

Models are small `RefCounted` data objects, following existing worldgen conventions.
`to_dict()` deep-copies nested mutable data. `canonical_output()` uses Godot's sorted
JSON dictionary keys and stable arrays; validation is excluded by default so a check
does not change the result being checked. This is diagnostic serialization, not a
versioned save/import format. The mutable runtime objects belong to their result.

## Pipeline and variation

1. Copy fixed Canon. Initialize local `RandomNumberGenerator` instances from unchanged
   `SeedDeriver` with `history-v0.1 / version / structure|dates|social` namespaces.
2. Found a regional compact/crown/trade league at -430..-560 (play start=0).
3. Generate four linked pressure/collapse events. Options are drought → levy refusal
   → civil war; flood → succession split → civil war; or tremor → sanctuary schism
   → evacuation. Collapse retires both governments and leaves an administrative ruin.
   These are local pressures, never the final world-wide Canon explanation.
4. Found two remnant groups and refugee assembly. Merge remnants into A; refugee
   migration forms B and a settlement. Split/schism of B forms C. Parent graphs and
   military/trade/kinship, refugee/village/modified-community roles vary by scenario.
5. Found A/C sites. A/B war leaves hostility and a watchtower. B/C refugee aid changes
   their relationship. C reoccupies the canal and founds a pumping-site settlement.
   Two scenarios include a later A/C canal war; one has no evidenced A/C relation.
   No relation row means no recorded history, rather than an invented neutral score.
6. Recover one anomalous machine from crater/salt/unfamiliar-manufacture observations.
   Objective origin remains `unknown`. This is a bounded anomalous-discovery example,
   not an assertion that every region contains an Outerworld arrival.
7. Replay effects. Relationship deltas pool in chronological order, clamped -100..100;
   source IDs retain the war/schism/aid provenance. Active ancestry walks extinct
   group parents back to precursor. Current sites and ruins reference one abstract
   region, not playable terrain coordinates.
8. Separately author conflicting collapse/schism/device claims, including false
   Administrator-origin beliefs. Text depends on local pressure and community form.
   Confidence is a claimant's conviction, never a truth probability. Projector does
   not read claims, so belief cannot modify objective facts or relationships.
9. Validate. Generation validates structure once; CLI/tests generate a second result
   and explicitly check determinism. `not_checked` is shown when replay was not requested.

Year units are abstract relative local chronology, not a resident calendar or Earth year.
No global RNG, wall clock, global IDs or mutable shared registry enters generation.
Naming draw count/locale has no influence on history choices. Custom providers must be
pure/deterministic; the validator detects mismatching outputs when supplied a replay.

## Validation and scars

Schema errors stop unsafe reference traversal. Reference errors stop lifecycle/projection.
Validation rejects duplicate entity/event/object IDs, unknown narrative/type/effect/extra
fact fields, missing or future/cyclic cause refs, missing entity/location/effect refs,
unborn or retired actors, duplicate creation/resurrection, incorrect lifecycle metadata,
future/missing/self-cycle parents, unsupported successor sources, invalid merges,
invalid settlements/owners/relations/reoccupation and unreviewed anomaly origins.
The one regional collapse must retire the precursor and have a 2..5-event local pressure
chain. Current factions must trace precursor ancestry. Fixed Canon snapshots must match
exactly; RESERVED entries cannot be removed or answered through objective effect fields.

Replay the timeline independently and compare the entire `HistoryState`; this catches
fabricated current factions, relationships, ruins or provenance. Important means
importance=2 (all shipping events). Count direct event IDs on surviving current records,
then separately follow their cause ancestors. At least 75% important events need causal
coverage; direct coverage below 75% warns. Extinct group founding survives as ancestry,
war as hostility/ruins, migration as sites/aid, schism as C/relationship, collapse as
ancestry/ruins and discovery as unresolved record. No standalone textual scar counts.

Claims require current faction claimants, valid event XOR known belief topic, nonempty
interpretation and finite confidence. At least five claims cover all three factions.
Lack of differing interpretations is a warning; contradictory beliefs are permitted.
Templates and names are trusted authored/display content: validator checks structured
boundaries, not arbitrary natural-language truth or whether two sentences philosophically
contradict each other. New objective templates still require Canon review.

## API and naming boundary

```gdscript
var generator := HistoryGenerator.new()
var result := generator.generate(42)
var report := HistoryValidator.new().validate(result, generator.generate(42))
print(HistoryDebugFormatter.new().format(result))
```

Assign the returned `report` to `result.validation_report` before formatting if the
output should include the replay check. Call `HistoryProjector.project()` only with
validated/trusted entities/events; it is not an untrusted import boundary.

M035 already exists on fetched main. An optional adapter can render its canonical names:

```gdscript
var catalog := NamingCatalog.default_catalog()
var names := NameGenerator.new(catalog)
var renderer := NameRenderer.new(catalog)
var source := HistoryNameSource.new(func(seed: int, id: String, kind: String) -> String:
    var type := "settlement" if kind == "settlement" else "mixed_location"
    var canonical := names.generate(seed, "history/" + id, "prototype_surface", type)
    return renderer.render(canonical, "en") if canonical != null else "")
var result := HistoryGenerator.new(source).generate(42)
```

This prototype keeps labels only; future locale/save integration should preserve M035
`GeneratedName` alongside stable historical IDs. No faction-specific naming taxonomy is
invented here. Tests exercise this real adapter and prove event RNG/effects unchanged.
Future worldgen attaches `location_ids`/ruin IDs to spatial placement; a faction system
imports active factions/ancestry/relationship scores and causes once. Neither should
parse lore prose or beliefs as objective truth. Gameplay simulation begins after year 0
and needs its own persistence/event ownership contract.

## Run and limits

```bash
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tools/preview_history.gd -- 42
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tools/preview_history.gd -- 42 --json
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tests/test_history_generator.gd
bash tools/check_godot.sh
```

Three authored skeleton families intentionally limit variation. No generated polity
economy, individuals, territory polygons, quests, player knowledge filtering, localization
or playable-map scars are implemented. Canon hidden truths in CLI are developer-only.
Test success is structural/deterministic evidence; lore plausibility, dramatic quality,
balance, exported package and manual play acceptance remain separate.
