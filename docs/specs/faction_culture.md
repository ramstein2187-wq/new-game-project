+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
type = "알고리즘 / 데이터 모델"
systems = "FactionCultureCatalog / CultureEvidence / CultureRules / FactionCultureResolver / SocietyActorInteraction / CultureGoalQuery"
milestones = "M041 — codex/faction-culture-doctrines-v1; main 미병합"
code_paths = ["content/culture/faction_culture_v1.json", "game/history/faction_culture_catalog.gd", "game/history/culture_evidence.gd", "game/history/culture_rules.gd", "game/history/faction_culture_resolver.gd", "game/history/society_actor_interaction.gd", "game/history/culture_goal_query.gd", "tools/analyze_faction_culture.gd"]
diagram = "docs/diagrams/faction_culture.svg"
+++
# Faction Society Traits & Doctrines v1 — M041

Implemented on `codex/faction-culture-doctrines-v1`, exact M040 base
`ae03d6dd9e0f93b1d7b67cd88a640bf1816a8e2b`; not merged main.
Catalog authority: `content/culture/faction_culture_v1.json`, revision
`faction-culture-v1-authored-1`. This version describes a derived query layer,
not a culture/religion generator or post-start simulation.

## Ownership and boundaries

![Derived history/culture pipeline](../diagrams/faction_culture.svg)

Objective History → projected present state → M040 identity/interpretation →
Society Traits → Doctrines → values/taboos/desires/fears → future goal candidates.
Claims remain separate perceived statements. Interpretation asks how evidence is
read; Doctrine asks what should be valued or done. Neither changes the evidence.
M040 Claim wording, generation RNG, content revision and serialization are untouched.
Generation3 remains architecture2; legacy generation2 remains architecture1.

`FactionCultureResolver.resolve(result, faction_id)` accepts a current v3 faction
and recomputes a detached Dictionary. It writes no entities, events, effects,
HistoryState, Claims or save records. There is no global cache or new autoload.
Names, locale and Claim prose are never evidence inputs.

## Composable responsibilities

| Source | Responsibility |
| --- | --- |
| `FactionCultureCatalog` | Read/copy/validate authored JSON, 20 Society Traits and 33 Doctrines |
| `CultureEvidence` | Real entity/projected-state/event/M040 evidence with source records |
| `CultureRules` | Generic all/any/preferences/forbids, weighted selection, intensity and conflicts |
| `FactionCultureResolver` | Compose query, aggregate tags and emit selection provenance |
| `SocietyActorInteraction` | Match an independent semantic Actor profile to selected values/taboos/tensions |
| `CultureGoalQuery` | Expose authored candidates from selected Doctrine desires only |

JSON follows the existing authored social-population catalog approach. Definitions
are data, with no per-Doctrine procedural if/elif logic. Catalog access returns deep
copies; caller edits cannot mutate the catalog.

## Evidence vocabulary and scope

Evidence is `{tag: [source_record, ...]}`. A source record carries
`source_event_ids`, `source_path`, `detail`, and `scope` (`faction`, `regional`,
`derived_identity`; explicit fixtures use `synthetic`). Multiple events may
support a tag. All shipping records reference existing objective events.

Current supported namespaces:

- `formation:*`, `life:*`, `role:*`: exact recorded faction metadata.
- `structure:inherited_offices`, `structure:multiple_parents`,
  `structure:local_settlement`: political continuity, parents and currently owned settlements.
- `identity:*`, `interpretation:*`, `memory:*`, `adaptive:*`, `anchor:*`:
  exact M040 axes, explicitly labelled derived with M040 provenance.
- `event:*`: direct involvement by actor ID or faction-addressed effect.
- `history:cooperation/hostility`: signed faction relationship effects, not present
  score or rumors. `history:population_join` requires an actual join effect.
- `history:unknown_discovery` and `reuse:*`: actual finder and reuse purpose.
- `history:regional_pressure/collapse`: recorded shared regional history.
- `scar:orbital_attack/orbital_debris/sky_signal/core_quarantine/route_isolation/
  deep_closure/chemical_exposure/environmental_change`: exact reviewed narrative keys.
  Regional evidence remains regional; it does not establish personal injury or inherited loss.
- `population:mixed_lineages`: multiple actual current authored lineage templates;
  `population:multi_origin_lineage`: one actual stratum with multiple Origins.
  These are distinct from mixed-origin society and political merger.

No `capability:biotechnology`, semi-sapient/machine-society contact, machine-war scar,
Innerworld ancestry, homeland loss or reproduction institution is inferred from
planetary Canon, lifestyle names, Core interventions, anonymous discovery, orbital
debris, political extinction or migration. Future tags can appear in definitions,
but the shipping extractor does not supply them without a separately reviewed
authoring contract. A future catalog registration alone cannot bypass extraction.

## Definition contracts

Both catalogs require unique `id`, `display_name`, `category`, `explanation`,
`requires_all[]`, `requires_any[]`, `prefers[]`, `forbids[]`, `base_weight > 0`.
`requires_all` must all match; an empty `requires_any` imposes no extra condition;
a nonempty one needs at least one match. Any `forbids` match vetoes eligibility.
Every definition has at least one requirement. Traits also expose `value_tags[]`,
`tension_tags[]` and an optional near-duplicate `family` group. There is no
default stat modifier or reputation effect.

Doctrines add `conflicts[]`, `values[]`, `taboos[]`, `desires[]`, `fears[]`,
`allowed_intensities[]`, `intensity_rules{}` and `goal_candidates[]`.
Every desire has at least one explicitly authored candidate. All candidate records
name one of that Doctrine's desires and explain their prospective status.

## Selection and determinism

1. Resolve M040 identity and actual evidence.
2. Filter trait definitions by all/any/forbids.
3. Weight each eligible definition as `base_weight + 2 × matched_preferences`.
4. Draw a target of 2–4 traits and select without replacement, respecting optional families.
5. Filter Doctrines with the same evaluator; draw a target of 0/1/2 with 20%/65%/15% bands.
6. Select weighted candidates without replacement; calculate their intensity and reject
   any conflict with already selected Doctrines. The count is an upper bound.
7. Aggregate semantic tags and preserve evidence/selection/intensity reasons.

Pools and final selections are sorted by stable catalog IDs. Every random stream
uses `SeedDeriver(seed, [history, 3, culture, 1, faction_id, axis])`, with separate
trait-count/selection, doctrine-count/selection and per-Doctrine intensity axes.
Queries never consume historical topology, naming or identity streams. Catalog
expansion can affect culture choices but cannot alter upstream history/M040.
Reordering the same definitions cannot change selection.

Shipping factions have enough real trait evidence to satisfy 2–4 selections:
local settlement/pressure memory plus recorded lifestyle and regional roles.
Fixtures without enough evidence return fewer traits rather than fabricate support.
Doctrines are optional; eligible does not mean selected, and uniform frequencies
are not a success criterion.

## Qualitative intensity and conflict semantics

`custom` is a lightly enforced preference. `doctrine` needs its authored reinforcement
rule and denotes a recognized norm or major expectation. `orthodoxy` requires
at least three specified evidence tags from at least two distinct objective events.
After that gate, a separate 12% roll permits the stronger level; it cannot create
missing evidence. This roll keeps well-supported extremes uncommon rather than
making all eligible factions orthodox. Custom provenance always retains eligibility
evidence; stronger entries add the exact reinforcement tags.

Example Pure Flesh orthodoxy: real machine-war scar + recent machine hostility +
isolation role. Three aliases of the same event do not suffice. Shipping maintenance,
archive, ritual, military and shelter norms have their own authored reinforcement
rules. Intensity is not a numerical modifier.

Conflict records specify `id`, `min_intensity`, `other_min_intensity`; the evaluator
checks both directions even when a relation is authored on only one side.
Pure Flesh/Machine Kinship or Revelation, Last Human Measure/Many Bodies,
Depth Taboo/Return to Deep, and Closed Sky/Skyward Hunger are hard conflicts.
Mutable Human/Ancestral Genome and Unspoiled Ground/New Ecology conflict only
when both reach at least `doctrine`. Continuity/Radical Impermanence conflict only
at mutual `orthodoxy`. Weaker conceptual tensions remain valid.

Interpretive modes impose no ideological veto: a skeptic may select Skyward Hunger,
a ritual faction may select Truth Through Trial, and a technical faction may select
Machine Revelation without claiming to know the purpose of old infrastructure.

## Culture Profile

```text
faction_id, culture_revision, identity_profile
society_traits[{id, display_name, category, value_tags, tension_tags, provenance}]
doctrines[{id, display_name, category, values, taboos, desires, fears,
           intensity{level, support_tags, explanation}, goal_candidates, provenance}]
doctrine_intensities{id: level}
value_tags[], taboo_tags[], desire_tags[], fear_tags[], tension_tags[]
provenance[]
evidence{tag: source_records[]}
eligible_traits[], eligible_doctrines[]
selection_targets{society_traits, doctrines}
```

Each provenance entry separates matched requirements, matched preferences, support
records, explanation, weighted choice and target. Eligibility is an explanation
of permission; the selected weight and independent stream explain the choice
among permitted options. The diagnostic lists support eligible/selected-frequency
analysis without changing source-of-truth ownership.
`errors` independently checks eligibility, references, intensity and conflicts,
then checks equality with authoritative recomputation. Profiles are local query
results, not trusted externally supplied saves or a public ingestion format.

## Dormant content gates

The following 14 Doctrines intentionally remain unavailable in shipping history.
Zero eligible frequency is distinct from a random failure to select a rare entry.

| Doctrine | Future local authored evidence required |
| --- | --- |
| Pure Flesh | Machine war, autonomous catastrophe or augmentation disaster; recent hostility/institutional reinforcement for stronger levels |
| Machine Kinship | Actual machine-society contact; membership institution for a recognized norm |
| Silent Circuit | Actual autonomous-machine harm; human oversight for stronger norms |
| Bounded Automation | Actual automation capability and human oversight; sovereign autonomous institution is a veto |
| The Mutable Human | Local biotechnology and recorded bodily modification; a modification institution for stronger norms |
| Ancestral Genome | Explicit lineage-preservation content and genetic-preservation institution |
| Designed Kinship | Local biotechnology and an authored heredity-design institution |
| Ecological Communion | Actual local biological adaptation and an authored adapted lineage |
| Last Human Measure | A locally authored human-form benchmark institution; exclusion evidence for stronger norms |
| Many Bodies, One People | Actual local multiple authored lineages or a multi-Origin lineage; baseline-only population and lifestyle names cannot activate it |
| The Thinking Threshold | Actual semi-sapient contact and optional personhood-conflict/threshold institution |
| Kin Beyond Thought | Actual semi-sapient or other nonhuman moral contact; protection institution for stronger norms |
| The Reclamation | Actual recorded homeland loss and homeland association; migration alone is insufficient |
| Return to the Deep | Actual Innerworld ancestry and recorded lost Innerworld site; tunnels alone are insufficient |

Two Society Traits are also dormant: Rotating Stewardship requires an actual
rotating-office institution; Many Forms, One Hearth requires actual local lineage
plurality. Synthetic fixtures live under `tests/fixtures/`; the explicit
`resolve_fixture` authoring/test query requires every source to be labelled
`synthetic` and marks its output. Ordinary generation never invokes it. The corpus
tool appends a clearly separate synthetic example, excluded from shipping counts.

## Actor semantic interaction

![Actor semantic interaction](../diagrams/society_actor_interaction.svg)

`SocietyActorInteraction.resolve(profile, {expresses: [...]})` needs no real Actor,
Actor Trait Resource, UI or stat resolver. It matches selected trait values/tensions
and Doctrine values/taboos to individual expressions. Tags are deduplicated/sorted.
It returns simultaneous `positive_reasons`, `negative_reasons`, `mixed_reasons`,
qualitative `standing` and `role_hooks/dialogue_hooks/event_hooks/access_hooks`.
Reasons retain source kind/ID/intensity and culture provenance.

With no match the individual is `accepted`; positive-only matches are `welcomed`.
Trait tension or custom taboo makes them `watched`; Doctrine taboo makes them
`disfavored`; orthodox taboo makes them `taboo`. Strongest negative consequence
sets standing while all positive usefulness/eligibility reasons remain available.
Maintenance Covenant + Pure Flesh can therefore find an augmented craftsperson
technically useful and culturally suspect at the same time.

Hooks express `consider_eligibility` or `review_restriction`, not automatic access
grants, a reputation number or implemented dialogue/events. Living Archive maps
oral/performance tags to historical authority and memory performances; Beauty Against
Ruin maps artistry to public commissions/priorities; Sacred Craft maps craftsmanship
to artisan standing, provenance review and workshop access; Unfinished Form maps
bodily adaptation to membership/aesthetic review. Philosophy maps continuity and
reform to office review, while knowledge norms map skepticism/experiment to evidence
and unknown-phenomenon review. Authored special cases can later compose additional
reason/hook records at a separate application boundary without replacing default
semantic matching or discarding opposing reasons.

## Future simulation goal boundary

`CultureGoalQuery.candidates(profile)` returns deterministic
`{id, desire, source_doctrine_id, intensity, status: candidate, explanation, provenance}`.
Only selected Doctrines contribute. No target ID, location, known species/contact,
launch capacity, map, ancestral object or successful operation follows from a desire.
For example `restore_orbital_link` is an aspiration/search opportunity, and
`relocate_population` is a proposed response; neither creates a link or moves anyone.
No AI priority score, economy, research, war, settlement building, territorial claim,
migration, quest or post-start cultural evolution is implemented.

Next integration should consume this profile through player-knowledge filtering and
explicit role/dialogue/access policy. Later simulation must independently validate
capability, actual target and current world facts before accepting any candidate.

## Reproducible validation

- `tests/test_faction_culture.gd`: rule/selection/provenance/conflict/intensity,
  fixture isolation, Actor reactions, candidate boundaries and upstream regressions.
- `tests/fixtures/history_m040_baseline.json`: ten canonical/structural/M040 output
  hashes captured by running the exact base checkout, including legacy v2.
- `tools/analyze_faction_culture.gd -- 1000 OUTPUT_DIRECTORY`: replayed shipping
  histories, profile recomputation, eligible/selected frequencies, categories,
  intensities, tag distributions, repeated combinations and safety counts.
- Full gate: `bash tools/check_godot.sh`; exact combat datasets remain unchanged.
- Saved [corpus](../reviews/faction_culture_v1/statistics.json),
  [readable samples](../reviews/faction_culture_v1/samples.md),
  [qualitative review](../reviews/faction_culture_v1/qualitative_review.md),
  and [delivery review](../reviews/2026-10-06-faction-culture-v1.md).

These are headless/semantic and source-readability checks. GUI/play/package,
player-knowledge display, balancing, language quality and live Notion sync remain
outside this implementation's validation.
