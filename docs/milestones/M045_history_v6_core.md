# M045 — History Generator v6 Phase A

Status: implemented and validated on `codex/history-generator-v6-core`, base `c32cce0`.
Task branch only; main is not merged.

Independent event-driven prototype; v2–v5 and the default generator stay frozen.
Six local objective rules, typed state/effects, atomic reducer, deterministic
selection and replay. No claims, archaeology, gameplay integration or migration.

Validation: 8,516 focused assertions; initial/final 100-seed and final 1,000-seed
corpora with zero errors and matching JSON replays; ten readable histories and
qualitative reviews; two executable extension experiments; 48 exact-base v2–v5
hashes match. Final full Godot 40-script/import/startup/dataset gate exits 0.
Layout and wiki metadata checks pass. No UI/play/package/manual approval claimed.

Remaining limitations: six-group faction saturation, alternating event cycles,
damage-only physical evolution; no world/Actor integration. See report before Phase B.

[Request](../reviews/history_v6/request.md) · [Continuation](../reviews/history_v6/WORK_LOG.md)
· [Comparison/findings](../reviews/history_v6/report.md) · [Delivery](../reviews/history_v6/delivery.md)
