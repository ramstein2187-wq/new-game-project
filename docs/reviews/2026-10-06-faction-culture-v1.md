# M041 — Faction Society Traits & Doctrines v1 delivery review

2026-10-06. Implemented and validated on the isolated task branch; no main merge.

## Git delivery and preservation

- Branch: `codex/faction-culture-doctrines-v1`.
- Worktree: `C:/GameDev/faction-culture-doctrines-v1`.
- Exact base: `ae03d6dd9e0f93b1d7b67cd88a640bf1816a8e2b` (completed M040).
- Delivery commit: the task-branch commit containing this report; record exact `git rev-parse HEAD` and verified remote SHA in the final chat and local delivery receipt after committing.
- Main baseline: `10f6f31cd39f165a7e04c658921056089eb794ef`; no merge or main edit.
- Original M040 checkout and its 12 untracked EverRogue sidecars are hash-audited; see [preservation evidence](faction_culture_v1/preservation-after.json). Task-worktree generated sidecars are also excluded from staging.

## Implemented contracts

20 Society Traits describe structures and everyday practice; 33 Doctrines describe normative values, taboos, desires and fears. The JSON catalog is authored authority. Trait and Doctrine selection use the same generic all/any/preferences/forbids evaluator with evidence-gated weighted choice, distinct SeedDeriver namespaces and explicit conditional conflicts. There is no default numerical stat or reputation effect.

`FactionCultureResolver` returns a detached, recomputed profile containing faction ID, unchanged M040 identity, selected trait/Doctrine rows, intensity mapping, semantic aggregates, provenance, actual evidence records, eligibility lists and selection targets. No output is persisted in objective history. Exact-base v2/v3 canonical output, M040 identity, names/locale isolation and Claims separation are verified.

`custom` is mild preference; `doctrine` requires authored reinforcement; `orthodoxy` requires at least three relevant tags and two distinct objective source events before a separate rarity draw. Conflicts apply symmetrically with minimum-intensity thresholds, allowing weaker paradoxes.

`SocietyActorInteraction` accepts independent semantic expressions, keeps simultaneous positive/negative/mixed reasons, qualitative standing and role/dialogue/event/access hooks. An augmented technical craftsperson can be useful under Maintenance Covenant and suspect/taboo under synthetic Pure Flesh. Art affects historical authority, public works, artisan standing, provenance and adaptive membership hooks. Actual dialogue or access enforcement is deferred.

`CultureGoalQuery` exposes explicit authored candidate records from each selected Doctrine desire only, with source/intensity/provenance and status=candidate. It creates no target facts, capabilities, actual movement, AI, territory, economy, research, war, settlements or quests.

See [full spec](../specs/faction_culture.md), [wiki](../wiki/faction_culture.md), and [milestone](../milestones/M041_faction_culture_doctrines.md).

## Society Trait catalog and observed frequencies

Frequency denominators are 6,246 current factions across seeds1..1000. Eligible is permission before count/conflict/selection; selected is actual occurrence.

| Society Trait | Eligible | Selected |
| --- | ---: | ---: |
| Archive Legitimacy | 1066 | 707 |
| Borrowed Offices | 2675 | 1689 |
| Boundary Watch | 2195 | 1310 |
| Closed Roads | 1098 | 716 |
| Deep Boundary Keepers | 88 | 53 |
| Hazard Memory | 6246 | 2982 |
| Household Sovereignty | 767 | 457 |
| Local Mandate | 6246 | 2853 |
| Maintenance Covenant | 1680 | 1120 |
| Many Forms, One Hearth | 0 | 0 |
| Mutual Obligation | 4341 | 2637 |
| Newcomer Charter | 595 | 357 |
| Practical Heresy | 465 | 271 |
| Rebuilt From Fragments | 743 | 449 |
| Ritual Stewardship | 816 | 485 |
| Rotating Stewardship | 0 | 0 |
| Route Commonwealth | 2805 | 1672 |
| Salvage Custom | 50 | 19 |
| Scarred by the Sky | 195 | 113 |
| Shelter Compact | 1327 | 803 |

All 20 agreed concepts are retained. Rotating Stewardship and Many Forms, One Hearth intentionally remain dormant without actual rotation institutions or local authored lineage plurality.

## Doctrine catalog and observed frequencies

| Doctrine | Category | Eligible | Selected |
| --- | --- | ---: | ---: |
| Ancestral Genome | biotech | 0 | 0 |
| Beauty Against Ruin | art | 575 | 104 |
| Bounded Automation | machine | 0 | 0 |
| The Closed Sky | sky | 235 | 38 |
| Doctrine of Continuity | philosophy | 2918 | 821 |
| Debt of Shelter | ethics | 386 | 90 |
| Depth Taboo | deep | 88 | 15 |
| Designed Kinship | biotech | 0 | 0 |
| Ecological Communion | biotech | 0 | 0 |
| Kin Beyond Thought | sapience | 0 | 0 |
| Last Human Measure | biotech | 0 | 0 |
| Living Archive | art | 1740 | 348 |
| Machine Kinship | machine | 0 | 0 |
| Machine Revelation | machine | 392 | 68 |
| Many Bodies, One People | biotech | 0 | 0 |
| Measured Doubt | knowledge | 2417 | 551 |
| The Mutable Human | biotech | 0 | 0 |
| New Ecology | environment | 177 | 36 |
| No More Masters | philosophy | 3794 | 954 |
| Order Above Survival | philosophy | 795 | 199 |
| Practical Heresy | philosophy | 1387 | 292 |
| Pure Flesh | machine | 0 | 0 |
| Radical Impermanence | philosophy | 4519 | 1095 |
| The Reclamation | environment | 0 | 0 |
| Return to the Deep | deep | 0 | 0 |
| Sacred Craft | art | 1680 | 270 |
| Silent Circuit | machine | 0 | 0 |
| Skyward Hunger | sky | 235 | 31 |
| The Thinking Threshold | sapience | 0 | 0 |
| Truth Through Trial | knowledge | 757 | 118 |
| The Unfinished Form | art | 399 | 86 |
| Unspoiled Ground | environment | 644 | 135 |
| The World Must Be Mended | philosophy | 2962 | 589 |

Dormant Doctrines: Ancestral Genome, Bounded Automation, Designed Kinship, Ecological Communion, Kin Beyond Thought, Last Human Measure, Machine Kinship, Many Bodies, One People, The Mutable Human, Pure Flesh, The Reclamation, Return to the Deep, Silent Circuit, The Thinking Threshold.

**Yes: several design-expected Doctrines remain dormant because shipping history/content does not support them.** Machine war/autonomous catastrophe/contact, local biotechnology/form plurality, personhood contact, lost homeland and Innerworld ancestry are unavailable. Pure Flesh is not activated by isolation, skepticism, Core interventions or orbital debris. Modified-human lifestyle names do not authorize biotech norms. All fourteen dormant definitions are selectable with explicitly synthetic test evidence, which never enters shipping Canon.

## Validation

- Focused culture suite: **54,081 assertions PASS**, including rules, deterministic recomputation, bounds, duplicates, provenance, unsupported/dormant gates, all dormant synthetic activation, conditional conflicts, intensity, nonmutation, Actor interaction, goal boundaries, exact M040 base hashes and naming/Claim isolation.
- Full `bash tools/check_godot.sh`: **36/36 test scripts PASS**, editor parse/import, main-scene startup and official combat dataset exporter check PASS.
- Retained focused suites in that gate: v2 history48,463 assertions; M040 identity12,983 assertions; v3 topology and naming also PASS. Full per-script evidence is saved in [validation record](faction_culture_v1/validation.md).
- Offline docs checks:18 wiki pages and16 specs PASS; combat source/output fingerprints PASS; `git diff --check` PASS.
- Final corpus:1,000 deterministic shipping histories with replay,6,246 current factions,26 distinct-history readable representatives plus one separately labelled synthetic dormant/extreme case.

| Distribution | Counts |
| --- | --- |
| Society Traits 2 / 3 / 4 | 2,074 / 2,143 / 2,029 |
| Doctrines 0 / 1 / 2 | 1,270 / 4,112 / 864 |
| Intensity custom / doctrine / orthodoxy | 5,290 / 536 / 14 |
| Orthodoxy percentage of selected Doctrines | 0.239726% |
| Unique trait + Doctrine + intensity combinations | 3,647 |
| Repeated combination occurrences / rate | 2,599 / 41.6106% |
| Unique profiles including five M040 axes | 6,233 |
| Repeated identity-inclusive profile rate | 0.2081% |

Repeated means later occurrences after the first occurrence of each combination; names, IDs and provenance are excluded. This measures a finite authored catalog, not uniformity or overall world diversity.

| Doctrine category | Eligible occurrences | Selected occurrences |
| --- | ---: | ---: |
| art | 4394 | 808 |
| biotech | 0 | 0 |
| deep | 88 | 15 |
| environment | 821 | 171 |
| ethics | 386 | 90 |
| knowledge | 3174 | 669 |
| machine | 392 | 68 |
| philosophy | 16375 | 3950 |
| sapience | 0 | 0 |
| sky | 470 | 69 |

All safety counters are zero: historical validation errors, history/profile replay mismatches, conflicts, unsupported selections, invalid provenance/intensity, architecture/version violations, objective mutations and fabricated candidate facts. Full per-tag values/taboos/desires/fears distributions are saved in [statistics.json](faction_culture_v1/statistics.json). Frequencies are intentionally uneven; zero eligible frequency is a valid content gate.

## Qualitative findings

Inspected26 shipping factions from26 distinct histories and the synthetic case, answering all six requested questions in [qualitative_review.md](faction_culture_v1/qualitative_review.md). Includes three zero-Doctrine mundane societies; one/two-Doctrine examples; all four art Doctrines; political/philosophical norms; shelter ethics; chemical/deep/orbital scars; and shipping orthodoxy.

Technical Machine Revelation, skeptical Skyward Hunger and ritual Truth Through Trial are understandable without inferring Core purpose, Outerworld contact or new capabilities. Regional scars remain shared regional context. Household-autonomy genetic values and generic cooperation as Living Archive orthodoxy support were removed/tightened after review. The synthetic augmented craftsperson retains both technical usefulness and orthodox taboo. No shipping biotech example was invented.

Readable [samples.md](faction_culture_v1/samples.md) and exact diagnostic [snapshots](faction_culture_v1/samples.json) remain available for subsequent player-facing/editorial work.

## New files

- `content/culture/faction_culture_v1.json`
- `docs/diagrams/faction_culture.svg`
- `docs/diagrams/society_actor_interaction.svg`
- `docs/milestones/M041_faction_culture_doctrines.md`
- `docs/reviews/2026-10-06-faction-culture-v1.md`
- `docs/reviews/faction_culture_v1/WORK_LOG.md`
- `docs/reviews/faction_culture_v1/preservation-after.json`
- `docs/reviews/faction_culture_v1/preservation-before.json`
- `docs/reviews/faction_culture_v1/qualitative_review.md`
- `docs/reviews/faction_culture_v1/samples.json`
- `docs/reviews/faction_culture_v1/samples.md`
- `docs/reviews/faction_culture_v1/statistics.json`
- `docs/reviews/faction_culture_v1/validation.md`
- `docs/specs/faction_culture.md`
- `docs/wiki/faction_culture.md`
- `game/history/culture_evidence.gd`
- `game/history/culture_evidence.gd.uid`
- `game/history/culture_goal_query.gd`
- `game/history/culture_goal_query.gd.uid`
- `game/history/culture_rules.gd`
- `game/history/culture_rules.gd.uid`
- `game/history/faction_culture_catalog.gd`
- `game/history/faction_culture_catalog.gd.uid`
- `game/history/faction_culture_resolver.gd`
- `game/history/faction_culture_resolver.gd.uid`
- `game/history/society_actor_interaction.gd`
- `game/history/society_actor_interaction.gd.uid`
- `tests/fixtures/culture_fixtures.gd`
- `tests/fixtures/culture_fixtures.gd.uid`
- `tests/fixtures/history_m040_baseline.json`
- `tests/test_faction_culture.gd`
- `tests/test_faction_culture.gd.uid`
- `tools/analyze_faction_culture.gd`
- `tools/analyze_faction_culture.gd.uid`

## Modified files

- `docs/MILESTONES.md`
- `docs/ROADMAP.md`
- `docs/specs/history_generator.md`
- `docs/wiki/history_generator.md`
- `tools/render_doc_diagrams.py`

No history generator/state/entity/projector/Claim/identity runtime file, naming stream, population Canon or combat data is modified. UID sidecars belong only to the new GDScript files; EverRogue imports are never staged.

## Limits and next integration boundary

Finite prototype English catalog and qualitative rules; no player UI, real Actor Trait catalog, role/dialogue/access enforcement, knowledge filtering, species generation, biotech mechanics, religion/language generator, save migration, or actual faction/world simulation. Source-reading review is not manual GUI/play/export-package acceptance, specialist language review, gameplay balance or live Notion approval.

Next scope: apply player-knowledge filtering to profiles, then consume semantic reasons through explicit role/dialogue/access policy. Later simulation should validate current world facts, target existence and capability before accepting a desire-derived candidate. Actual future biotech/sapience/machine/Innerworld content requires separately authored local evidence and a reviewed extractor adapter.
