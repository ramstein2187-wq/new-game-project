# 2026-10-08 — M046 cost-query integration review

## Purpose

Reintegrate the completed `codex/cost-query-and-effect-order` optimization onto the actual current main after PR #42, #43, #44 and #46, without reviving its obsolete M035 milestone number or overwriting newer runtime work.

## Integration decisions

- Applied the five runtime changes manually onto current main instead of merging the old-base commit wholesale.
- Preserved current `Actor` CON-derived Max HP and all M033/M034 behavior.
- Kept M035 assigned to Procedural Naming; registered this maintenance optimization as M046.
- Carried forward the current attributes/effects decision, spec, wiki and diagram updates.
- Did not copy the old branch's raw before/after benchmark JSON or historical M035 review artifacts; they remain available in commit `48da660` and are not required runtime assets.
- Godot-created EverRogue `.import` sidecars in the isolated worktree are untracked and excluded from the intended change set.

## Fresh validation

`bash tools/check_godot.sh` on base `bc2b49f` plus the integration changes:

- editor import/parse: PASS
- main scene startup: PASS
- 30/30 project test scripts: PASS
- attributes/effects: 748 assertions PASS
- CON-derived HP: 121 assertions PASS
- Character Overview: 281 assertions PASS
- Inspector modifier tones: 53 assertions PASS
- Character Screen: 284 assertions PASS
- M028 tactical AI: 64 assertions PASS
- deterministic production batch / body combat / replay regressions: PASS
- exact generated combat dataset check: PASS

The first full run passed every test script and failed only the final generated-dataset fingerprint check. After updating the five source hashes to the exact integrated runtime files, the complete gate was rerun and passed.

## Performance evidence boundary

The original task branch measured the optimization on the same Godot 4.7.2 installation and found substantial local reductions in numeric-query time, explanation creation and effect-ID sorting. A fresh benchmark invocation in this integration session was blocked by the execution security layer, so those historical measurements are treated as supporting evidence only; this integration claims semantic preservation and allocation-path structure, not a newly measured percentage speedup.
