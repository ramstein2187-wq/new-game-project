# M025 — Threat Calibration

Status: **In progress** on `chat/m025-threat-calibration`.

## Goal

Turn the M023 paired measurement foundation and M024 combat dataset into reproducible calibration evidence for a final Threat Rating scale.

## Measurement contract

- Combatants: Rat plus the ten M024 hostile prototypes.
- Pairing protocol: M023 `side_swap_v1`.
- Arena: `neutral_open_v1` — fixed equal start geometry, outer bounds only, no interior obstacles, no closed door, no hazards.
- Matrix: every unique 1v1 pair.
- Same seed range reused for every matchup.
- Production AI, Action, scheduler, combat, body and event paths remain unchanged.
- AI revisions are recorded with rating evidence and are expected to change over development.
- Primary raw result: decisive pairwise win rate.
- Diagnostics: stalls, simulation errors, slot-A/slot-B decisive win rate and Bradley-Terry residuals.

Doors, choke points and other tactical terrain are deliberately controlled away from universal TR. They remain gameplay context and can be studied separately when useful.

## Current result

The first 44,000-encounter pass reused the legacy test room and is retained only as diagnostic evidence after Boar vs Giant Crab analysis showed that its closed door materially changed first-contact timing.

The current calibration reran the same two independent 200-paired-seed blocks in `neutral_open_v1`: 44,000 total encounters, zero stalls and zero simulation errors. The regularized Bradley-Terry calibration/validation fits both converged in 8 iterations; every provisional rating reproduced within 20 points. Maximum absolute pair residual fell from about 0.17 in the legacy room to 0.079/0.084 in the neutral arena.

Current calibration ratings include Rat 214, Wolf 989, Giant Beetle 1110, Boar 1134, Giant Crab 1388, Feral Ape 1496 and Armored Raider 1731. These are still provisional roster-centered values; `final_threat_rating` remains null. See `docs/reviews/2026-09-28-m025-neutral-calibration-pass2.md`.

## Completion direction

1. Keep `neutral_open_v1` as the universal baseline while allowing separate contextual experiments when needed.
2. Recalibrate affected ratings whenever combat data, combat rules or a recorded AI policy revision changes materially.
3. Add uncertainty estimates and decide later whether an immutable benchmark anchor is useful once player progression is better defined.
4. Only then decide whether provisional BT ratings should become `final_threat_rating` or feed a separate encounter-cost layer.

## Non-goals of the first pass

- No encounter-budget formula yet.
- No player-level scaling.
- No balance changes merely to make the matrix look orderly.
- No static-score weights until simulation evidence is available.
