# M028 — Extensible melee tactical AI

Status: Implemented and automatically validated on `chat/m028-extensible-melee-ai`; armor-coverage and conservative-retreat follow-ups resolved, manual/main integration pending.
Base: `origin/main` at `8224828` (M027 integrated).

## Goal

Replace the unmerged M026 experiment with a main-based melee policy that preserves its useful local/contextual reasoning while integrating M027 weapon actions and armor profiles without turning AI into exact DPS optimization.

## Selected design

- Keep the runtime policy ID `basic_melee`; record implementation revision `basic_melee_v3`.
- Observe only coarse/legible target state: health category, dominant visible armor profile, none/partial/substantial armor coverage, distance, exposure and congestion. Do not score exact enemy HP, armor value, accuracy, damage, RNG state, ready time or future actions.
- Convert the actor's basic attack and current weapon actions into small `MeleeAttackOption` observations. Scoring uses qualitative armor matchup, relative penetration, action commitment/tempo, flat damage/situation modifiers and personality/state.
- Keep common `AttackAction` execution. No weapon ID branches in tactical AI.
- Preserve M026-style Hold/Reposition/Retreat candidates and per-actor caution memory, but Retreat is gated by survival pressure `fear + injury - aggression/2 >= 60` (attack-disabled is an explicit exception). After two cautious actions, only one still-eligible emergency Retreat is allowed before progress is required.
- Preserve reason/factor traces for developer explainability and player-visible retreat cues.
- RatTactics remains unchanged.

## Acceptance

All acceptance items are implemented and covered by automated validation. See [M028 validation](../reviews/2026-09-29-m028-validation.md).

1. Basic and special attacks compete through the same planner without weapon-specific branches.
2. MAIL/RIGID/SOFT matchups can alter action choice using profile identity but not exact armor value.
3. Quick/committed/heavy action cost affects preference qualitatively; no expected-DPS calculation is introduced.
4. Two-action hesitation cannot produce indefinite Hold/Reposition loops; survival retreat override remains possible in explicit danger states.
5. Selection is deterministic/read-only and consumes no combat RNG/time.
6. Existing common Action legality, scheduler, body capability and M027 combat resolution remain authoritative.
7. Focused tests plus full `tools/check_godot.sh` pass before delivery.

## Validation checkpoint

- Godot editor parse/import and main-scene headless smoke passed.
- All 24 project test scripts passed in two chunks; focused M028 test passed 48 assertions.
- A synthetic new Weapon Action was selected through data only, proving no weapon-ID branch is required.
- Initial unlimited emergency retreat caused batch stalls; final 2 ordinary + 1 emergency defensive allowance removed them.
- Qualitative review then added coarse armor coverage and conservative Retreat gating; focused coverage/retreat tests expanded to 64 assertions.
- Final 600-encounter paired sample after those refinements: zero simulation errors and zero stalls.
- Manual gameplay/fun review remains pending; no main merge is authorized by this milestone.

## Deferred

Perception/knowledge ownership, factions, ally support, target selection, formations, cooldown/resource systems, generic non-melee skill utility, exact action-efficiency optimization, final TR recalibration and player-facing intent UI.
