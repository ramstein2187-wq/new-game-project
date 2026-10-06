+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
type = "알고리즘 / 데이터 모델"
systems = "HistoryGenerator / HistoryTopology / HistoryProjector / HistoryValidator"
milestones = "M036 architecture / M037 v2 / M038 v3 — codex/history-generator-v0.3; main 미병합"
code_paths = ["game/history/history_generator.gd", "game/history/history_topology.gd", "game/history/history_sites.gd", "game/history/history_projector.gd", "game/history/history_validator.gd", "game/history/history_claim_builder.gd", "tools/analyze_history.gd"]
diagram = "docs/diagrams/history_generator.svg"
+++
# History Generator v0.3 — Variable Topology & Population Origins

![Canonical generation and separate claims](../diagrams/history_generator.svg)

## Why v2 needed another algorithm

M037 independently varied pressures, responses and community forms, but its current
politics still followed A/B/C: two remnants formed A, refugees formed B, C split from B,
and C always reused the pressure site. Event-type variation did not remove this political
skeleton. M038 retains the M036 architecture version1 and explicit algorithm2 regression
path, while **default generation is3** (`history-v3-authored-1`). It changes canonical
political ancestry, lifecycle and population provenance before rendering prose.

Exact base9380df358ce1e27fc38d38fa8a45bcb73eacec21, isolated
`codex/history-generator-v0.3`. This branch is not merged into main.
[World Canon](../lore/world_canon_v0_1.md) and LOCKED/RESERVED snapshot are unchanged.

## Data ownership

| Component | Owns |
| --- | --- |
| HistoryGenerator | Independent configuration, existing local collapse, reviewed rare lore, later relations/sites/discovery; M035 naming |
| HistoryTopology | One bounded shared transformation composer, family constraints/weights, count feasibility and temporary actor bookkeeping |
| HistoricalEntity | Stable identity, political parent IDs, formation origin, ancestry kind, founding population, naming context, lifecycle event IDs, lifestyle/roles |
| HistoricalEvent | Time, participants, causes and typed canonical effects |
| HistoryProjector | Replay of lifecycle, population stocks, ownership, relations and scars; historical/current projections |
| HistoryClaimBuilder | Perceived accounts with explicit event or present reference scope; no state mutation |
| HistorySites | Reviewed site type/hazard and conservative reuse compatibility |
| HistoryValidator | Closed schemas, references, chronology, transformations, population provenance, projection, claims and deterministic replay |
| HistoryDebugFormatter | Read-only canonical diagnostic text; no generated topology or inferred origins |
| tools/history_topology_statistics.gd | Observations and normalized graph signatures; never generator input |

## Topology families

Each family uses the **same** operation implementation. Roots vary in number, ancestry
and population stock. Weighted choices vary participants, operation order, child count,
parent survival and population donors. Constraints below are structural anchors; other
steps remain variable within each family.

| Family | Bias / constraint |
| --- | --- |
| Polycentric Succession | 3..5 independent institutional heirs; split-heavy, merge/migration/reorganization/extinction possible |
| Remnant Mosaic | Mixed inherited and newly organized roots; optional older enclave, consolidation, arrivals and losses |
| Late Fragmentation | 1..2 successors exist for centuries; 5..8 transformations begin in -95..-48; first is fragmentation |
| Consolidation → Resplit | Several initial heirs consolidate; protect the consolidated actor until its required resplit; subsequent consolidations/losses/order vary |
| Layered Migration | 2..3 local roots plus at least two other-region arrival layers; join, reorganization, migration, split and extinction |
| No Direct Heir | 2..3 institutional heirs explicitly become extinct; later resident organizations retain population stocks without inheriting those offices; arrivals also possible |
| Enclave Continuity | A parentless enclave forms during the old polity's lifetime and survives; other lineages have separate histories |

The common local pressure/collapse prelude still has six events. The political sequence
is not one A/B/C tree and may have several roots, extinct branches and multi-parent nodes.
The two required arrival layers or consolidation/resplit are minimum anchors, not full
family scripts. Uniform family selection is an authored diagnostic choice, not a balance
or lore frequency target.

## Bounded plan and active count

Target6..8 is drawn independently before topology generation. Ordinary families apply
7..11 transformations; late fragmentation applies5..8. For each step the composer
filters weighted specifications using living eligible actors, protected continuity anchors,
net faction-count effect and remaining capacity (maximum growth3, conservative shrink1
per step). At least two actors remain during composition, with one actionable beside any
protected anchor. The final **transformation** must land on the planned target.
No post-processing population/faction padding, retry loop or global RNG exists.
Temporary composer arrays are discarded; canonical lifecycle effects are authority.
The test corpus exercises every operation, both retiring and retained split parents,
partial donor merges, origin subsets and residents accepting arrivals.

## Political ancestry and identity

`parent_ids` is a DAG of historical **polities**, distinct from population `source_ids`.
`ancestry_kind` records root/direct/split/merge/reorganized/newcomer/no-predecessor;
`formation_origin` records founding/direct_successor/fragmentation/merger/
migration_settlement/reorganization/enclave_continuity/newcomer_formation.
Lifestyle and regional roles are independently seeded axes, not ancestry classifications.
Their existing prototype form labels are retained; full culture/institution generation is deferred.

`political_continuity` records direct continuity of old offices, not genetic descent.
It propagates through split/migration and any continuing merge participant; reorganization
breaks it even though political parent references remain. No Direct Heir has no surviving
institutional heirs. A polity may have old residents without an old political predecessor.

`created_event_id` / `retired_event_id` delimit its active period. Parent formation must
precede child formation. Transformation actors must be alive immediately before their
operation; retired actors never act again. Collapse can be followed by newly formed
institutional heirs claiming the former polity, so their historical parent can already be
retired. This does not permit a dead actor to participate in split/merge/migration.

`present.historical_factions` retains all polities, including the extinct precursor and
extinct factions, with formation/dissolution years, founding/last population and provenance.
`present.active_factions` is the current6..8 subset. Transient administrative groups and
arrival cohorts are population holders, not additional current political factions.

## Population Origin profile and provenance

The exact canonical vocabulary is **Planetary, Human-derived, Observer, Innerworld,
Outerworld, Unknown**. A profile is a nonempty ordered set in that vocabulary order.
There is no Composite Origin and no population genetics. Multiple categories mean
co-resident populations; no interbreeding or physical fusion is implied. Unknown is an
unresolved component, and may coexist with known components.

Each `population` effect records `entity_id`, `origin_ids`, `source_ids`, `mode`:

| Mode | Canonical meaning |
| --- | --- |
| seed / arrival | Initial local stock / an arriving other-region cohort; no donor IDs |
| inherit | Exactly one donor; preserve its profile |
| subset | One donor; a nonempty subset separates from it |
| co_residence | Two or more recorded donors; preserve their union |
| join | Existing residents plus arriving donor; union explained by an event |

Political merge participants and actual population donors are explicitly separate. A
merger may select one parent population while retaining two or three political parents.
This is a coarse categorical model, not a census; it does not assert where non-contributing
individuals went. Extinct political entities retain their last stock as historical population
sources. Political extinction does not claim species/Origin extinction.

Default precursor stock is Human-derived. Some independent local stocks also contain
Planetary or Unknown. Arrival cohorts draw Human-derived/Planetary/Innerworld/Unknown
from another abstract region; no absolute migration routes are simulated. Observer and
Outerworld are valid categories but are **not randomly seeded as new civilizations** by
this milestone. The taxonomy does not solve RESERVED ancient origins or restore the
vanished Observer civilization. General unknown artifact origin remains lowercase
`unknown` in the existing artifact schema, distinct from population `Unknown`.

Founding entity profiles are immutable metadata. Later profile changes replay into
current/last projection. `population_history` retains every donor/mode/event/time so
consumers can explain how a profile formed without consulting claims.

## Relations, claims and sites

Recent diplomacy selects a bounded set of pairs; existing split/migration relations also
survive only when both endpoints remain active. The graph is sparse, with3..8 present
edges in the seed1..1000 corpus, versus15..28 possible pairs. Enclave Continuity's old
enclave remains outside later political operations/diplomacy. Other families may also
have disconnected nodes, but complete isolation is not a universal guarantee.

A `relationship` **event effect** has signed `delta`. Current pair `score` is accumulated
in chronological order, clamped to[-100,100], with all contributing event IDs. Event
claims have `reference_scope=event`, event ID and `{a,b,delta}` evidence; their sentence
reads that delta. Present sentiment has `reference_scope=present`, no historical event
ID and `{a,b,score}` evidence. Validator rejects evidence that disagrees with its source.
A past dispute can coexist with a cooperative current score without rewriting the past.
Subjective legitimacy and disputed ancient interpretations remain beliefs, never facts.
Observer terms still require `observer_scholarly_term` knowledge.

Reuse is optional: independent40% attempt, then select only compatible site/faction/
purpose triples. Administrative/records/agricultural/residential sites may host appropriate
settlement/ritual/research uses; technical and military forms can use suitable structural
ruins for scavenging/research/posts. **Chemical, ordnance and restricted hazards are
never reused** under current policy; no decontamination or safety clearing is invented.
The actual selected site need not be the original pressure site. Damage records survive.
Transfers from dissolved polities are canonical `site_owner` effects; extinction retires
owned settlements and leaves a new administrative ruin. Future forbidden zones or
hazard clearance need explicit effects and policy, not renderer guesses.

## Determinism and retained rarity

`SeedDeriver` itself and M035 native naming remain unchanged. Every draw uses a local
RandomNumberGenerator with history version3 and namespaces for topology family,
target, plan, lifestyle, roles, population, knowledge, later relations, reuse, discovery,
rare budgets, dates and beliefs. Topology operations consume their own plan stream.
The exact v2 path continues with version2 and original naming contexts; seed42 canonical
output was compared with the exact base and preserved. No gameplay/save integration.

Primary domain thresholds are unchanged from v2:45% natural /45% human /8% bounded
Core /2% Observer legacy. Optional Core3% and Observer2% budgets apply only if that
domain is absent, max one of each per region. Reviewed physical mechanisms and unknown
activation/purpose/target-selection fields remain. Version3 draws change individual seed
outcomes, but probabilities were not redesigned. Orbital bombardment remains one rare
Observer motif. Optional generic discovery has a60% inclusion budget, independent of
political topology, with unknown objective origin.

## Invariants, validation and observations

Closed schemas reject invented objective facts/Origins. Validator checks references,
ordered causes, unique parents/actors, lifecycle metadata, living participants, formation
semantics, donor replay, safe ownership/reuse, projection equality, count, sparse relations,
claim scopes/evidence, rare budgets, Canon and exact replay. Archive records count as
surviving documentary scars; this does not guarantee an actual in-game accessible archive.
Chronology is -600..-1 with abstract years and play start0. Validator bounds14..64 events
and3..24 ruins; historical faction count is independent from current count.

[Machine statistics](../reviews/history_v3/diversity.json),
[ten full readable histories](../reviews/history_v3/samples.md),
[canonical diagnostic snapshots](../reviews/history_v3/samples.json) and
[graph comparison review](../reviews/2026-10-06-history-generator-v0_3.md) accompany M038.

Seed1..1000: invalid histories0, invalid references0, chronology violations0, Origin
violations0, active-count violations0, deterministic mismatch0. Active counts6/7/8:
340/333/327. Historical polities9..24 (includes precursor), maximum ancestry depth1..11.
All seven families vary internally; normalized chronological political DAG signatures
exclude seed, names, ID text, dates, prose, motifs, population and relations. They are not
a general unlabeled-graph isomorphism test. The report measures structural observations,
not gameplay balance or a promised probability distribution.

| Family | Histories |
| --- | ---: |
| Polycentric Succession | 143 |
| Remnant Mosaic | 155 |
| Late Fragmentation | 138 |
| Consolidation → Resplit | 131 |
| Layered Migration | 150 |
| No Direct Heir | 121 |
| Enclave Continuity | 162 |

334 histories have multi-origin polities;899 have multi-parent nodes;630 retain at least
one direct institutional heir and370 retain none. Compatible reuse414; no Observer/Core
861; Observer38; Core103; orbital bombardment11. Frequencies count histories containing
an event, not event totals. Seven-family selection did not force rare lore into every seed.

Run `tools/preview_history.gd -- SEED [--json] [--v2]` and
`tools/analyze_history.gd -- 1000 OUTPUT_DIRECTORY [--v2]` with Godot headless. The
JSON exporter is diagnostic only; no untrusted snapshot ingestion/save loader is added.
Tests round-trip every projected field through JSON using semantic numeric/container
comparison (Godot decodes numbers as floats and drops typed-array metadata). The runtime
supports 64-bit seeds; JSON consumers should preserve integer precision if transporting
large seeds. Recreating canonical runtime state uses generation/effect replay, not claims.

## Limits and future work

One abstract region, coarse population sets, finite steps and authored family anchors are
intentional. Regions, migration paths, territory conflict causes and population movement
amounts need future world integration. Relation pairs are seeded bounded local encounters,
not a territory/trade simulation. Site compatibility is deliberately conservative. No NPC
census, genealogy, genetics, economy, war simulation, faction AI, live simulation, language
change, full religion/culture/institution generator or bulk flavor corpus is implemented.
Historical diagnostic prose is English as in v2; M035 names render authored en/ko forms.
Manual game/UI/package acceptance and literary/language review remain separate from
headless and canonical graph inspection. Retire the v2 compatibility path only deliberately,
with a separately approved change to that regression contract.
