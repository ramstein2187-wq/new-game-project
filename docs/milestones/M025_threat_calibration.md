# M025 — Threat Calibration

Status: **In progress** on `chat/m025-threat-calibration`.

## Goal

Turn the M023 paired measurement foundation and M024 combat dataset into reproducible calibration evidence for a final Threat Rating scale.

## Initial measurement

- Combatants: Rat plus the ten M024 hostile prototypes.
- Protocol: M023 `side_swap_v1`.
- Matrix: every unique 1v1 pair.
- Same seed range reused for every matchup.
- Production AI, Action, scheduler, combat, body and event paths remain unchanged.
- Primary raw result: decisive pairwise win rate.
- Diagnostics: stalls, simulation errors and slot-A/slot-B decisive win rate.

The first pass intentionally produces a relative performance matrix before choosing an arbitrary numeric TR scale or component weights.

## Initial result

Two independent 200-paired-seed blocks completed the full 55-matchup matrix: 44,000 total production encounters, zero stalls and zero simulation errors. The relative ordering was identical in both blocks and the largest roster-score shift between blocks was 0.0148.

A regularized Bradley-Terry fitter is now implemented in `time_cost/simulation/threat_rating_fitter.gd`. The first seed block is the calibration fit and the second is an independent validation fit. Both converged in 7 iterations; all provisional Elo-compatible ratings reproduced within 24 points. `docs/datasets/threat_ratings.json` stores `simulation_score`, latent `bt_strength`, provisional `bt_rating`, and validation rating while `final_threat_rating` remains null. See `docs/reviews/2026-09-28-m025-threat-calibration-pass1.md`.

## Completion direction

1. Add one or more immutable benchmark combatant profiles.
2. Measure every monster against the fixed benchmark set.
3. Choose a versioned numeric mapping that remains stable when the content roster changes.
4. Add an uncertainty method and only then populate `final_threat_rating`.

## Non-goals of the first pass

- No encounter-budget formula yet.
- No player-level scaling.
- No balance changes merely to make the matrix look orderly.
- No static-score weights until simulation evidence is available.
