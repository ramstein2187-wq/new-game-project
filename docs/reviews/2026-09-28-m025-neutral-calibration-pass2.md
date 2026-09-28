# M025 Neutral Threat Calibration — Pass 2

Date: 2026-09-28
Branch: `chat/m025-threat-calibration`

## Why this pass exists

The first M025 matrix reused the legacy fixed test room. Follow-up inspection of Boar vs Giant Crab showed that the closed door and interior obstacles could materially change first-contact timing and therefore pairwise outcomes. That environment is useful tactical context, but it should not define the universal monster Threat Rating baseline.

Pass 2 therefore separates **monster rating conditions** from **gameplay tactical conditions**.

## Standard arena contract

Threat calibration now uses `neutral_open_v1`:

- same fixed start positions as the existing simulator: (2,3) and (8,3);
- outer room bounds remain;
- no interior walls or blocking props;
- the legacy door coordinate is permanently open and cannot consume an action;
- same production movement, Action, scheduler, combat, body and event rules;
- same production AI policy used by each combatant;
- same-seed forward/reverse `side_swap_v1` pairing.

The arena intentionally does **not** model doors, choke points, cover, hazards or special terrain. Those are tactical contexts for gameplay and may be measured separately when useful.

## AI versioning contract

Threat Rating is derived from what the production actor actually does, so AI is part of the measured combatant behavior. Current revisions are:

- `rat_tactics_v1`
- `basic_melee_v1`

A material change to production decision behavior should increment the relevant policy revision and invalidate/recompute affected TR evidence. This does not mean AI must be frozen or perfected before rating. It means each rating is a reproducible snapshot of a documented combat-data + combat-rules + AI revision.

## Measurement

Combatants: Rat plus the ten M024 hostiles.
Matchups: all 55 unique pairs.
Calibration block: seeds 25000..25199.
Validation block: seeds 27000..27199.
Each block: 200 paired seeds / 400 encounters per matchup.
Combined: 44,000 encounters.
Stalls: 0.
Simulation errors: 0.

Combined roster-relative decisive win rates:

| Combatant | Wins / 8000 | Simulation score |
| --- | ---: | ---: |
| Rat | 202 | 0.025250 |
| Feral Dog | 1244 | 0.155500 |
| Cave Lizard | 2392 | 0.299000 |
| Giant Spider | 2848 | 0.356000 |
| Raider | 2848 | 0.356000 |
| Wolf | 3912 | 0.489000 |
| Giant Beetle | 4797 | 0.599625 |
| Boar | 4915 | 0.614375 |
| Giant Crab | 6359 | 0.794875 |
| Feral Ape | 6799 | 0.849875 |
| Armored Raider | 7684 | 0.960500 |

These values remain roster-relative evidence, not final TR.

## Regularized Bradley-Terry fit

The existing M025 fitter was reused unchanged:

- `P(A beats B) = sigmoid(theta_A - theta_B)`
- L2 regularization `lambda = 1.0`
- provisional display mapping `1000 + theta * 400 / ln(10)`

| Combatant | Calibration BT | Validation BT | Delta |
| --- | ---: | ---: | ---: |
| Rat | 214.03 | 219.82 | +5.79 |
| Feral Dog | 543.83 | 531.64 | -12.19 |
| Cave Lizard | 753.56 | 752.27 | -1.29 |
| Giant Spider | 816.72 | 831.64 | +14.92 |
| Raider | 824.93 | 823.43 | -1.50 |
| Wolf | 988.52 | 975.08 | -13.44 |
| Giant Beetle | 1110.14 | 1121.40 | +11.26 |
| Boar | 1133.50 | 1135.34 | +1.84 |
| Giant Crab | 1387.61 | 1396.49 | +8.88 |
| Feral Ape | 1496.42 | 1477.38 | -19.04 |
| Armored Raider | 1730.73 | 1735.50 | +4.77 |

Calibration fit: 8 iterations, log loss 0.285657, maximum absolute pair residual 0.0791.
Validation fit: 8 iterations, log loss 0.285400, maximum absolute pair residual 0.0844.
All validation ratings reproduced within 20 points of calibration.

The reduction in maximum residual from about 0.17 in the legacy room to about 0.08 in the neutral arena is evidence that the old room geometry was injecting substantial matchup-specific context into the rating matrix.

## Boar vs Giant Crab sanity check

Legacy-room measurements had Boar near 50% against Giant Crab despite the single-axis model expecting Crab to be clearly stronger. Neutral calibration gives:

- calibration: Boar 22.5%, Crab 77.5%;
- validation: Boar 21.0%, Crab 79.0%.

This is now consistent with their general rating difference and confirms that the earlier anomaly was dominated by environment/timing context rather than an irreducible universal matchup effect.

## Interpretation

TR is intentionally **not** a perfect prediction of every tactical situation. It is a controlled, reproducible estimate of general 1v1 combat strength under a neutral open approach.

Doors, choke points, hazards, terrain, ambushes, group action economy and player exploitation remain gameplay context. If those are later measured, their results should be treated as contextual modifiers or separate tactical evidence rather than folded automatically into universal TR.

AI is also intentionally allowed to evolve. Recalibration after meaningful AI revisions is expected and should be cheap enough to remain part of the content/balance workflow.
