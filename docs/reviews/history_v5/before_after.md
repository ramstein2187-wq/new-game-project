# Before / after — independent full raw reviews

Revision1 and revision2 each have5000 generated/validated/replayed histories. Each review uses20 OS-random worlds; round2 excludes all round1 seeds. Scores are honest manual judgments, not a paired experiment or proof of actual engine play.

| Axis | Round1 mean | Round2 mean | Change | Target | Round2 result |
|---|---:|---:|---:|---:|---|
| Lore Fit | 8.975 | 9.300 | +0.325 | 9.0 | met |
| Historical Plausibility | 7.135 | 8.435 | +1.300 | 8.0 | met |
| Interest | 8.300 | 8.620 | +0.320 | 8.0 | met |
| Political Diversity | 8.495 | 8.620 | +0.125 | 8.0 | met |
| Imaginative Space | 8.265 | 8.850 | +0.585 | 8.5 | met |
| Non-Repetition | 5.695 | 6.990 | +1.295 | 8.0 | missed |
| Temporal Depth | 8.555 | 8.925 | +0.370 | 8.0 | met |
| Gameplay Potential | 6.440 | 7.725 | +1.285 | 8.0 | missed |

## Worst3 by the same eight-score mean

| Review | Seeds | Mean of their overall scores |
|---|---|---:|
| Round1 | [4772, 2239, 4255] | 7.471 |
| Round2 | [2188, 1781, 2710] | 8.125 |

## Recurring defects

Counts are reviewed worlds with a recorded defect, not occurrences. Zero means no such defect was documented in this20-world sample; it is not a universal semantic-safety proof. New round2 tags (generic action menus, procedural wording, missing contacts, repetitive formation) were not systematically scored in round1: their round1 zero is unrecorded, not proof of absence or regression. Redundant questions and redundant major questions are one normalized tag.

| Recorded defect | Round1 /20 | Round2 /20 |
|---|---:|---:|---|
| duplicate cause IDs | 2 | 0 |
| generic action menus | 0 | 20 |
| generic contexts | 20 | 20 |
| lore-only action menu | 2 | 0 |
| mismatched hook variants | 20 | 0 |
| missing recorded current contacts | 0 | 7 |
| ordinary discovery has no Trace contract | 9 | 0 |
| premature material staging | 18 | 0 |
| procedural hook wording | 0 | 20 |
| redundant major questions | 1 | 6 |
| repeated claims | 20 | 20 |
| repetitive formation sequence | 0 | 9 |
| salient history omitted from major questions | 10 | 12 |
| selected evidence precedes the subject it purports to investigate | 2 | 0 |
| shared information content | 20 | 20 |
| temporal prose leakage | 8 | 0 |
| unrelated evidence bundled under one subject | 7 | 0 |
| unsupported capability inference | 2 | 0 |
| unsupported cooperative machine evidence | 2 | 0 |
| unsupported question presupposition | 15 | 0 |
| unsupported technical-procedure proposal | 1 | 0 |
| weak current stakes | 20 | 20 |

## Political distribution

The v5 topology algorithm did not change during the evidence/prose revision. The measured distributions below test that separation; the v4→v5 distribution comparison is in corpus_statistics.md.

| Current formation | Round1 count | Round2 count | Round2 share |
|---|---:|---:|---:|
| direct_successor | 2039 | 2039 | 7.03% |
| enclave_continuity | 1116 | 1116 | 3.85% |
| fragmentation | 10922 | 10922 | 37.66% |
| merger | 1267 | 1267 | 4.37% |
| migration_settlement | 2091 | 2091 | 7.21% |
| newcomer_formation | 4766 | 4766 | 16.43% |
| reorganization | 6800 | 6800 | 23.45% |

## Observed Project phase prose repetition

An observation is a mandatory Project phase event with a v5_phase source record. The numerator counts observations beyond the first instance of each exact phase sentence. This is a narrow measured prose-reuse fraction, not a semantic-progression score; samples can contain different Projects.

| Review | Phase observations | Phase keys | Distinct sentences | Reused-sentence fraction | Keys with two observed alternatives |
|---|---:|---:|---:|---:|---:|
| Round1 | 53 | 25 | 25 | 52.83% | 0 |
| Round2 | 44 | 20 | 27 | 38.64% | 7 |

## Content and gameplay contracts

| Metric | Round1 | Round2 |
|---|---:|---:|
| Reached traces definitions | 100 | 116 |
| Reached questions definitions | 40 | 40 |
| Reached interactions definitions | 60 | 60 |
| traces/world | 79.401 | 72.247 |
| major_questions/world | 4.490 | 4.423 |
| interactions/world | 238.157 | 216.772 |
| consequences/world | 34.212 | 34.998 |
| contexts/world | 7.201 | 42.599 |
| Reached interaction families | 20 | 20 |
| Reached action types | 21 | 21 |

Family count alone did not improve: revision1 already reached20 but attached many variants to incompatible objects. Revision2 adds exact material eligibility, actual premise/subject checks and current execution requirements. The qualitative notes assess whether that general correction worked in fresh worlds.

Evidence collection and corroborated permissions are implemented. Combat, stealth, repairs, biological application, Actor dialogue and map placement are consumer contracts; implemented historical-world action executions remain0. Candidate current positions require dialogue confirmation and do not establish historical motives.
