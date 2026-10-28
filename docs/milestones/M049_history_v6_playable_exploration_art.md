# M049 — Playable exploration and pixel art

Status: implemented and automatically/GPU validated on `codex/m049-playable-exploration-art`, based on M048 `f49c17cf1a141bd1d71d964d60bc75dc3125ddcb`. Main is not a target. Human free-play acceptance remains unperformed.

## Scope and decisions

- Binding request: [Issue #53 snapshot](../reviews/m049/issue-53.md).
- Preserve original main/M048 dirty files; hashes in `C:/GameDev/m049-preservation-before.json`.
- Keep Phase A/B and Manifest untouched. New versioned consumer profile `history_zone/2` powers the production F6 scene; v1 stays executable for prior regression contracts and old-save compatibility.
- 96x64 localities with four spatial forms, landmark loops and distant exits. Current environmental supplies have explicit nonhistorical provenance and finite quantities.
- Reuse catalog Actors, Action/AI/Scheduler. Add perception activation at the world adapter boundary, not a duplicate combat policy. Cell-indexed objects avoid full-map scans in every tactical neighbor query.
- Reproducible offline 16x16 atlas; no external runtime image API. Korean PO, pixel-scale camera and optional overview.
- Required validation: original 43 scripts, new focused tests, 100+ worlds x 3 regions, real two-policy action runs, Actor persistence, 9 GPU screenshots and iterative visual inspection.
- Human 20–30 minute enjoyment acceptance remains unperformed; automated traversal is not that acceptance.

## Recovery log

2026-10-28: Read Issue, prior uncommitted autoplay evaluation, governing docs and runtime. Isolated worktree created. Original evaluation found exits after two moves and no legal rewards in 9/10 cautious worlds. Implementation underway; no completion claim yet.

2026-10-28 implementation: /2 consumer built from unchanged historical records; layout/encounter streams separated; 96×64 regions with four forms, finite environment ledger, legal gathering, survey/bridge goals, field recovery and weapon exchange. Generic Catalog Actor restore with deterministic spawn type validation; legacy /1 retained. Korean presentation/camera/atlas integrated into the existing F6 scene.

Validation: focused 49 checks (39 in full gate plus ten later variable-count fixture assertions); eight-species 65 checks; Phase C 613; final Korean 1,086 (1,085 in full gate). Full existing43+new2 gate exit0 including exporter freshness. 500 worlds / 1,500 zones, zero corpus failures and unchanged Manifest hashes; 4,500 enemies across eight types. 20 policy runs save exactly; cautious10/10 completes all six goals, recovery-first5/10 survives. Do not call the deaths a passing balance result.

Visual iterations: replaced rigid outer grid/repetitive grass, repaired tree silhouettes, distinct floors, nearby hints before progress. All 3 seeds ×3 resolutions plus overview/character/site (18 PNGs) captured through actual Godot GPU/Input. Found and fixed capture fixture's missing logical keycode; Escape/save/load now asserted against visible state, time advance and file contents. Final corpse draw ordering puts player above corpses. Atlas --check is byte-reproducible.

Operational notes: DevSpace workspace `ws_19d5559448`, WSL path `/mnt/c/GameDev/m049-playable-exploration-art`. A long DevSpace full-gate response timed out; reran via WSL with native output capture, preserving `docs/reviews/m049/full-gate.log`. Layout audit requires ignored `.godot/history-world-captures` and `.godot/korean-playtest-captures` directories; dynamic output templates now have explicit directory prefixes. Primary/M048 30 dirty/untracked files, heads and statuses match preservation baseline. Do not stage generated EverRogue import sidecars.

Deliverables: [report](../reviews/m049/report.md), [spec](../specs/history_playable_world.md), [wiki](../wiki/history_playable_world.md), [atlas provenance](../../assets/tilesets/exploration/README.md). Report contains reproduction, metrics, seed failures, screenshots and limitations. Delivery commit/remote receipt is recorded in `C:/GameDev/m049-work-record.md` and the final response; main merge is not authorized.
