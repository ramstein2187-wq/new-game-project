+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
type = "데이터 모델"
systems = "CanonPolicy / HistoryGenerator / HistoryProjector / HistoryValidator"
milestones = "M036 architecture / M037 algorithm v2 — codex/history-generator-v0.2; main 미병합"
code_paths = ["game/history/canon_policy.gd", "game/history/history_generator.gd", "game/history/history_motifs.gd", "game/history/history_claim_builder.gd", "game/history/history_projector.gd", "game/history/history_validator.gd", "tools/preview_history.gd", "tools/analyze_history.gd"]
diagram = "docs/diagrams/history_generator.svg"
+++
# History Generator algorithm v2

![History generation and separate beliefs](../diagrams/history_generator.svg)

## Scope and authority

M036 architecture remains version **1**: entity definitions → objective events/effects →
projected present → separate claims → validation. M037 bumps the **generation algorithm
from 1 to 2**; v1 seed outputs intentionally change. `content_revision` identifies this
reviewed recipe catalog. Determinism requires the same seed, algorithm and authored
history/naming content. This is constrained generation, not forward simulation.

One abstract region, one precursor, three current factions, 19..21 events within -600..-1,
3..4 ruins, five settlements, one generic unknown discovery and 15..21 claims.
The validator contract permits 14..24 events and 3..5 ruins. The last century has five
small events. Year 0 is play start; year units are abstract, not a resident calendar.
Gameplay, maps, actors, combat, saves, quests and post-start simulation stay outside
this slice. Authoritative [world Canon](../lore/world_canon_v0_1.md) and
[generation contract](../lore/history_generation_contract.md) remain unchanged.

## Responsibilities and ownership

| Component | Responsibility |
| --- | --- |
| CanonPolicy | Owned LOCKED / RESERVED / GENERATABLE / BELIEF-ONLY snapshot; closed schemas |
| HistoryMotifs | Small reviewed axis pools, visible objective narratives and bounded physical mechanisms |
| HistoricalEntity | Stable ID, kind, political form/lifestyle, parent/lifecycle refs, knowledge tags, owned canonical GeneratedName and lineage culture context |
| HistoricalEvent | Semantic ID, year/type, actors/locations/entities/causes/effects, local/regional scope and objective cause domain |
| HistoryGenerator | Independent axis selection and small sequential stage composition |
| HistoryProjector | Only authority for factions, ancestry, relationships, settlements, ruins, discoveries and system consequences |
| HistoryClaimBuilder | Read-only contextual interpretations; never an effect/state input |
| HistoryNameSource | Default M035 canonical names; optional pure provider and custom naming catalog |
| HistoryState / HistoryResult | Result-owned mutable models; deep dictionary exports; stable diagnostic serialization |
| HistoryValidator | Schema, references, lifecycle, policy, projection, scars and new v2 boundaries |
| HistoryDebugFormatter | Read-only configuration, objective history, present, beliefs, validation report |
| tools/history_statistics | Read-only diversity aggregation, not a generator authority |

Models remain small RefCounted objects; GeneratedName is the existing native Resource.
No Markdown parser, global registry or JSON content import was introduced. `to_dict()`
returns owned nested dictionaries/arrays. `canonical_output()` sorts dictionary keys
and excludes validation by default; `structural_output()` additionally excludes names
and canonical naming records, retaining actual history/effects/claims. Neither is a
save/import format. Projector expects trusted/validated inputs.

## Independent recipe axes

No `variant=0..2` chooses an entire history. Each stage draws independently:

| Axis | Authored choices |
| --- | --- |
| Precursor | trade league, dynastic crown, provincial compact, city confederation, administrative federation |
| Primary pressure | natural 45%, human 45%, Core 8%, Observer legacy 2% |
| Natural motifs | extreme seasons beyond adaptations; stress on already critical geology; exposed chemical/terraforming residue; haze/radiative exposure |
| Human motifs | administrative fragmentation, succession dispute, military overextension, migration pressure, trade failure, adaptation tension |
| Response | regional autonomy, ritual schism, maintenance secession, household council |
| Terminal local failure | civil war, evacuation, office fragmentation |
| A | military remnant, trading house, kinship clan, provincial council, infrastructure guild, ritual authority |
| B | refugee community, village union, modified-human community, migrant confederation, frontier settlement league, regional commune |
| C | religious community, facility community, breakaway clan, resource/trade commune |
| Ancestry | central remnants, mixed provincial sources, provincial refugees |
| Middle / recent | 3 middle motifs; 5 recent motifs; aid, discovery, expansion, rivalry/accord |
| Unknown discovery | impact machine, mineral-layer object, unfamiliar manufacture, erosion-exposed seal, stratum fragment, surface wreckage |
| Beliefs | pragmatic, skeptical, technical, ritual base outlook plus independent claimant outlook |

`SeedDeriver` is unchanged. RNG seeds derive from `[history, 2, domain]`. Domains include
`precursor`, `pressure/domain`, `pressure/motif`, `response`, `collapse`, `successors/a`,
`successors/b`, `successors/ancestry`, `faction-c`, `middle`, `recent`, `discovery`,
`beliefs/profile`, `knowledge/<faction>`, `dates/<semantic stage>`, `relations/<phase>`,
`recent/owner`, `recent/last`, and `legacy/{core,orbital}/{budget,motif}`.
Claimant outlook/confidence and M035 names have separate namespaces. Draw counts in
one stage never advance another stage's RNG. Tests add/reorder reviewed discoveries
and edit en/ko naming forms, proving other structural facts unchanged.

Chronology is dense during precursor pressure/collapse (-370..roughly -310) and early
reconstruction, sparse in the middle, then active again in the last 100 years. Pressure
and human response/failure form a bounded 2..5 contributor chain. Collapse retires
regional authorities. Two remnant groups merge into A; displaced households form B;
C separates from B. All current factions trace back through extinct bodies to the
precursor. Current scores pool/clamp actual relationship effects, retaining source IDs.
Sites/ruins retain founding, damage and reoccupation provenance; no decorative scar log.
Water, canals and pumps are not mandatory history mechanisms.

## Legacy systems and reserved truth

A non-Core primary history has an independent 3% optional Core event budget; a
non-Observer primary history has a separate 2% optional Observer event budget. At most
one event in each legacy domain occurs per region. These are finite-sample target
probabilities, not promises of exact counts. An orbital motif is one of four choices:
one bounded bombardment, reentry, falling fragments, surveillance failure. No recurring
bombardment or globally active military system is generated.

Core motifs: quarantine, route isolation, underground closure, gradual precipitation
redistribution, gradual boundary adjustment, infrastructure shutdown, local slope
failure or existing-fault stress release. Strict `system_trace` effects record separate
system ID, operation, physical basis and `unknown` intent/activation/target-selection
reason. Existing barriers/equipment, stored resources, fluid pressure and already
stressed geology bound the mechanisms. No geological energy from nothing, global
planet control or combined omniscient AI. Observer military/fleet, orbital defense,
environmental infrastructure and Deep Core are distinct system IDs. Legacy events
have no invented human activation-cause links. Later human consequences may cite them.
A single timestamp records the visible consequence of a decades-long environmental
change, not an instantaneous climate command.

Identified Observer debris is a reviewed system consequence; generic discoveries
always remain `origin=unknown`, even when nearby in time/space. Objective provenance
can be clearer than residents' interpretations. First modifier, global collapse,
Observer self-name/political system/origin/disappearance and Core motives remain
RESERVED. New authored narratives require Canon review; the validator cannot determine
arbitrary natural-language truth.

## Claims and knowledge

Ancestry, lifestyle, current relationship effects, event context, legitimacy and knowledge
inform claims. A military, trading, clan, ritual, technical or household account emphasizes
different duties. Outlooks produce skeptical and practical interpretations as well as
religious ones. Confidence describes conviction, not factual likelihood.

Objective developer data may say Observer. A claim can use `Observer`/`관찰자` only
with `observer_scholarly_term`. Technical A/C forms have a 65% tag chance, others 8%,
from independent per-faction seeds. This is minimal generation metadata, not simulated
knowledge propagation. Ordinary factions use ancient builders/old sky machines, or
mistaken meteor/enemy-weapon/judgment accounts. Observer is a modern classification,
never the ancient civilization's actual self-name. Naming prototype culture ID
`administrator` remains untouched.

## Naming and API

```gdscript
var generator := HistoryGenerator.new()
var result := generator.generate(42)
result.validation_report = HistoryValidator.new().validate(result, generator.generate(42))
print(HistoryDebugFormatter.new().format(result))
var ko := NameRenderer.new().render(result.entity("faction_a").generated_name, "ko")
```

M035 is the default, retaining GeneratedName alongside stable historical IDs. Factions
and precursor/region use existing mixed-location templates; groups/settlements use
settlement templates. All share prototype_surface inherited lineage context; this is
not faction-specific language evolution. Sorted stable entity IDs define collision
resolution; max 32 attempts block en/ko display collisions within the result. Failure
falls back to the stable ID with a validator warning. A custom pure provider may return
String or an owned copy of GeneratedName; changing labels/locale cannot alter effects,
claims, chronology or relations. Changing catalog forms can change rerolls/canonical
naming tokens; those are naming-only data. Custom catalog Resources are isolated by M035.

An optional reviewed discovery pool on HistoryGenerator is a narrow deterministic test
boundary: nonempty subsets/reorderings of `HistoryMotifs.DISCOVERIES`, not an untrusted
content loader. Adding a new motif requires catalog/schema/narrative review and a content
revision. Custom providers must be pure for replay to pass.

## Validation and diagnostics

Retains v1 duplicate/missing/cyclic refs, lifecycle, source ancestry, effect schema,
settlement owner, relation, reoccupation, Canon, unknown discovery and entire-present
replay checks. New checks enforce algorithm/architecture versions, exact configuration
axes and event/form agreement, scope/domain/narrative agreement, separate system IDs and
reviewed physical mechanisms, unknown reasons, local legacy budgets/no invented triggers,
knowledge gate, naming collision and >=3 recent events. Every important event needs
surviving causal scar coverage >=75%; direct coverage <75% warns. Caller-provided second
result checks determinism without recursive generation.

```bash
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tools/preview_history.gd -- 42
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tools/preview_history.gd -- 42 --json
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tools/analyze_history.gd -- 1000 res://docs/reviews/history_v2
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tests/test_history_generator.gd
bash tools/check_godot.sh
```

[1000-seed evidence and ten full reports](../reviews/history_v2/samples.md) and
[M037 review](../reviews/2026-10-06-history-generator-v0_2.md) separate automated checks,
agent qualitative reading and user acceptance. No terrain/economy/population/person/
religion/quest generation, complete orbit model, player knowledge UI, localization of
history prose, scar decay or package/play approval is claimed.

Worldgen should consume stable location/ruin IDs and place them once. Faction integration
should consume projected active factions, ancestry, lifestyle, knowledge, canonical names,
relationship scores and causes. Neither may recalculate historical effects or parse claims
as facts. Year-0 handoff/persistence ownership must be designed before gameplay integration.
