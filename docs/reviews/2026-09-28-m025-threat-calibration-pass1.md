# M025 Threat Calibration — Initial Matrix

> Superseded for universal rating by `neutral_open_v1` Pass 2. This legacy-room pass is retained as diagnostic history because the closed door and interior obstacles were later shown to materially affect first-contact timing and matchup outcomes. See `docs/reviews/2026-09-28-m025-neutral-calibration-pass2.md`.

Date: 2026-09-28
Branch: `chat/m025-threat-calibration`
Protocol: `side_swap_v1`

## Scope

The first M025 calibration pass ran the complete 11-combatant round robin:

- Rat
- Feral Dog
- Wolf
- Boar
- Giant Beetle
- Cave Lizard
- Giant Spider
- Giant Crab
- Feral Ape
- Raider
- Armored Raider

Every unique pair used M023 production combat with same-seed forward/reverse side swaps.

Two independent blocks were measured:

- block A: 200 paired seeds per matchup, seeds 25000..25199
- block B: 200 paired seeds per matchup, seeds 27000..27199

This is 400 paired seeds / 800 encounters per matchup, 55 matchups, and 44,000 total encounters.

## Execution quality

- simulation errors: 0
- stalled encounters: 0
- every encounter was decisive
- slot-A / slot-B decisive win rates were usually 50/50 after side swaps
- largest observed block-level slot deviation was 57.75% / 42.25% in Giant Beetle vs Cave Lizard, so slot diagnostics remain relevant

## Initial simulation score

For this pass, `simulation_score` is the mean decisive win rate against the other ten members of the fixed 11-combatant calibration roster. Because every matchup uses the same number of encounters, this equals pooled decisive wins divided by 8,000 encounters per combatant.

This score is **roster-relative calibration evidence**, not the final Threat Rating scale.

| Combatant | Block A | Block B | Combined simulation score |
| --- | ---: | ---: | ---: |
| Rat | 0.0310 | 0.0290 | 0.0300 |
| Feral Dog | 0.1573 | 0.1460 | 0.1516 |
| Cave Lizard | 0.3135 | 0.3073 | 0.3104 |
| Raider | 0.3252 | 0.3400 | 0.3326 |
| Giant Spider | 0.3890 | 0.3965 | 0.3928 |
| Wolf | 0.5092 | 0.5115 | 0.5104 |
| Giant Beetle | 0.5457 | 0.5415 | 0.5436 |
| Boar | 0.6490 | 0.6515 | 0.6503 |
| Giant Crab | 0.7338 | 0.7332 | 0.7335 |
| Feral Ape | 0.9058 | 0.9080 | 0.9069 |
| Armored Raider | 0.9405 | 0.9355 | 0.9380 |

The largest block-to-block score change was Raider at 0.0148. The ordering was identical in both blocks.

## Bradley-Terry calibration

A regularized Bradley-Terry model was then fitted to the first 200-paired-seed block (25000..25199) and independently refitted to the second block (27000..27199) as validation.

Model contract:

- `P(A beats B) = sigmoid(theta_A - theta_B)`
- L2 regularization `lambda = 1.0` keeps complete-separation matchups finite.
- provisional rating mapping: `1000 + theta * 400 / ln(10)`.
- the current 1000 origin is roster-centered only; a future immutable benchmark will pin the absolute origin.
- 400 rating points mean 10:1 expected win odds, about 90.9%.

| Combatant | Calibration BT | Validation BT | Delta |
| --- | ---: | ---: | ---: |
| Rat | 263.77 | 244.40 | -19.37 |
| Feral Dog | 552.78 | 528.93 | -23.85 |
| Cave Lizard | 775.14 | 771.12 | -4.02 |
| Raider | 789.44 | 811.56 | +22.12 |
| Giant Spider | 864.32 | 878.20 | +13.88 |
| Wolf | 1000.48 | 1008.92 | +8.44 |
| Giant Beetle | 1042.31 | 1043.26 | +0.95 |
| Boar | 1167.19 | 1175.68 | +8.49 |
| Giant Crab | 1283.15 | 1286.67 | +3.52 |
| Feral Ape | 1590.29 | 1594.33 | +4.04 |
| Armored Raider | 1671.14 | 1656.92 | -14.22 |

Both fits converged in 7 Newton iterations. Calibration log loss was 0.297836 and validation log loss was 0.295416. Every rating reproduced within 24 points in the independent block.

The single-axis model does not explain every matchup equally well. The largest stable residual is Boar vs Giant Crab: observed Boar win rate was 50.5% in calibration and 51.5% in validation, while the model predicted about 33.9% and 34.6%. Wolf vs Boar and several Giant Beetle matchups also show notable residuals. These residuals are useful evidence of matchup-specific body/armor/damage interactions rather than reasons to force the raw combat data onto a perfectly transitive ranking.

## Interpretation

The current prototype roster has a stable relative ordering under the present fixed arena and AI:

Rat < Feral Dog < Cave Lizard < Raider < Giant Spider < Wolf < Giant Beetle < Boar < Giant Crab < Feral Ape < Armored Raider.

This ordering is descriptive evidence, not a balance target. Large gaps are expected from the deliberately broad M024 prototype content.

A direct multiplicative strength scale anchored to Rat is unsuitable as the final user-facing/internal TR number because near-zero pairwise win probabilities produce extremely large ratios. The regularized Bradley-Terry model solves the separation problem and gives rating differences a probability interpretation, but its additive origin is still arbitrary. M025 therefore records provisional `bt_rating` values while keeping `final_threat_rating` null until a fixed benchmark pins the absolute scale.

## Next calibration step

Introduce one or more immutable benchmark combatants (for example a fixed baseline adventurer profile), run every monster against those benchmarks, and combine that stable reference with the pairwise matrix. Then choose and document the final numeric scale and uncertainty method.
