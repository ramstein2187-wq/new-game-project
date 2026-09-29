# M027 — Physical combat, weapon actions and hand requirements

Status: Implemented and automatically validated on `codex/m027-physical-combat-weapon-actions`.
Base: freshly fetched `origin/main` e232b28 (2026-09-29).
Workspace: C:/GameDev/m027-physical-combat.

## Resume record

- Read project AGENTS, ROADMAP, MILESTONES, M024 and normal weapon time decision.
- M025 (`origin/chat/m025-threat-calibration`) and M026 (`origin/codex/basic-melee-v2`) are unmerged. M027 is unused in remote milestone inventories.
- Original checkout and its untracked imports/reviews preserved. App create_worktree returned Not a git repository from C:/GameDev; used Git worktree fallback.
- Windows SSH host-key verification failed; existing WSL Git successfully fetched origin without changing security settings. Use WSL Git for push.
- Implement entire supplied physical-combat specification plus explicit 1H/2H requirements. No main merge.

## Plan and decisions

1. Record baseline checks and paired production batches before combat edits.
2. Add Cut/Puncture/Blunt constants, central SOFT/MAIL/RIGID profile table and natural profile propagation; preserve RNG order and ceil half damage.
3. Add small WeaponActionDefinition modifiers, runtime actor weapon copies, shared AttackAction selection/cost and availability.
4. Weapon required_hands is authoritative at runtime; validate its base attack capability/count agreement. Natural attacks retain their own requirements. Positive counts above two remain engine-valid for future body templates; current content only 1/2.
5. Reuse BodyInstance minimum selected-limb efficiency. Equipped weapon remains after injury. No equip eligibility system or hand bonus.
6. Add minimal playground controls, clear rejection reason, F3 data, focused regression tests.
7. Run full check, headless scenes, before/after batches, diff review, commit intended files and push branch.

## Acceptance

Implementation and automated validation complete on the task branch; main integration and GUI/manual acceptance remain separate. See [decisions and content table](../decisions/physical_combat_weapon_actions.md) and [validation evidence](../reviews/2026-09-29-m027-validation.md).

## Implementation checkpoint

- Core model, profiles, natural armor, sparse WeaponActionDefinition and common AttackAction execution implemented.
- Runtime hands derive from equipped WeaponDefinition; mismatched authoring rejected. Positive counts beyond 2 supported and tested on synthetic multi-limb body.
- Playground uses common debug-panel weapon selector and special buttons; existing keys remain unchanged. Compacted ability rows into two columns after headless bounds regression detected overlap.
- Focused M027 tests pass (2026-09-29), including real UI signals in both scenes.
- Baseline full 22-test check passed. Current full suite reached replay; only expected serialized event schema/type changes caused its hash mismatch.
- Replay now also normalizes only new telemetry/type names and proves exact equality to original M024 mechanics/RNG hash 15e9a39730d9061efdf2dee906b78ccda0ea73a8abd5fe031583184c81b6147e. New M027 fixture c2a2b59086dd022fcdbaca27129ba6d4e3a31b2befc33f5393d305eaf9a7aee5 captured after that check passed; original fixture unchanged.
- Before/after paired sample: 100 seeds 27000..27099 per matchup (600 encounters each version), zero errors/stalls. Dog/Wolf identical; Raider vs Beetle wins 56/144 -> 30/170; Raider vs Armored wins 2/198 -> 0/200. Rigid Cut +20 explains higher defense; no TR/balance tuning.
- Final 23/23 full suite, editor import/parse, default startup and both explicit 20-frame headless scenes passed. Diff reviewed; only M027-related source, tests and docs are included in the delivery commit. Generated asset imports remain untracked.
- Legacy rat batch 100 runs compared against an isolated archive of e232b28 under ignored `.godot/m027-baseline-project`: identical metrics, including 86 stalls. This is existing production AI behavior, not a profile regression.
- Manual visual/play remains unperformed. Commit/push result and SHA are recorded in the final chat report and `C:/GameDev/m027-delivery.md`.
