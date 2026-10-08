# Repository hygiene audit — 2026-10-08

## Scope and non-destructive policy

Audited `origin/main` at `b60d2b9` and the unmerged historical generator v5 branch at `3eda074`. All cleanup work is based on the latter in a separate review branch; **neither main nor the original v5 branch is modified or merged**. No user's uncommitted files, unrelated worktrees, asset packs, Godot cache, or Git branches have been deleted.

The design principle is **keep executable truth, tests and authored/qualitative evidence; retire only demonstrably reproducible, oversized generated exports or engine-generated detritus**. Original content remains recoverable from version control and regenerated using the historical tools and matching revision.

## Baseline snapshot (tracked blobs, not compressed repository-pack size)

| Revision | Tracked files | Total tracked bytes | `docs/reviews/` tracked bytes |
| --- | ---: | ---: | ---: |
| main `b60d2b9` | 465 | 1,478,735 | 231,941 |
| historical v4 `9f04f78` | 694 | 42,715,606 | 40,174,813 |
| redesigned v4 `c43b4f3` | 726 | 62,352,986 | 59,409,163 |
| v5 `3eda074` | 902 | 66,324,638 | 62,606,353 |

The disparity is mainly old **generated history/culture review exports**, not gameplay source. Deleting tracked files from a new commit reduces the current tree/checkout and future diffs; it does **not** erase old Git blobs from history or immediately shrink an existing `.git` object database.

## Retired from the current v5-derived tree

The following are large, regenerateable **full sample exports**, not live runtime content or frozen tests:

| Path | Recorded bytes | Retained alternative |
| --- | ---: | --- |
| `docs/reviews/history_v4/samples.json` | 16,760,625 | `review_packet.md`, `qualitative_review.md`, `statistics.json`, original `9f04f78` |
| `docs/reviews/history_v4_redesign/samples.json` | 16,191,427 | `review_packet.md`, review, statistics, original `c43b4f3` |
| `docs/reviews/social_incidents_v1/samples.json` | 7,038,367 | `samples.md` index, per-seed full reading files, review, statistics |
| `docs/reviews/faction_culture_v1/samples.json` | 3,358,283 | `samples.md`, qualitative review, statistics |
| `docs/reviews/history_v4/samples.md` | 2,523,371 | `review_packet.md` + individual review notes |
| `docs/reviews/history_v4_redesign/samples.md` | 2,512,285 | `review_packet.md` + individual review notes |

One automatic Godot import sidecar for `docs/reviews/2026-09-22-m019-scene.png` is also retired. The screenshot remains. Targeted ignore rules prevent accidental re-commit of these exports/sidecars.

Original raw files remain recoverable from the original Git commits, and the v4 analyzer/report scripts remain available if a full export is actually needed. The existing review summaries are historical evidence of their source runs; do not treat them as proof of the new cleanup's engine execution.

## Explicitly retained

- **Runtime, content, scene and authored catalog files**, including v5 `content/history/*.json`.
- **Every test and frozen fixture**, including v2/v3/v4 compatibility samples and `tests/fixtures/history_m042_upstream.json`.
- **v5 two-round random qualitative review**: 40 original raw histories and reading notes, seed selections, comparison, reviewer scores, human judgments, source hashes and full delivery.
- **Prior v4 representative five-layer review packets** and objective/qualitative reports.
- Social incidents' specifically reviewed per-seed files and `samples.md` navigational index (the qualitative review links to them).
- `docs/specs/`, `docs/decisions/`, `docs/wiki/`, milestone records and diagrams: they carry permanent decisions or Notion source identities.
- Imported third-party asset source files, UIDs, gameplay scenes and the root `icon.svg.import`: not generic rubbish.

## Needs an explicit separate retirement/verification pass

1. **Worktrees / local disk:** Many historical `C:\GameDev\` worktrees coexist; multiple entire trees include tens of MB of identical review artifacts. Audit each worktree's Git status, remote commit existence, unique local changes and owner before `git worktree remove` or deleting any directory. **No worktree was removed.**
2. **M010 micro-AP comparison:** currently intentionally retained and exercised by `tests/test_micro_ap_game.gd`; changing this is a separate code/test/README/wiki decision, not a delete-by-name candidate.
3. **M001 exploration scene:** the procedural walking viewer and `test_basic_interaction.gd` still require it. Cannot remove blindly.
4. **Historical diagnostic scripts:** `tools/check_folder_migration.py`, `capture_m019_scene.gd`, combat probes, scripts and UI preview tools are either referenced by milestone procedures or useful for reproducing results. Potential archival only after reproduction and replacement verification.
5. **Old narrative docs and generated review logs:** prioritize updating stale links and clarifying version-scoped status; preserving milestone evidence is generally preferable to stripping the project of its historical rationale.
6. **v5 gameplay semantics:** cleanup is unrelated to archaeology evidence-materialization problems, world-binding, and real investigation gameplay. Do not silently bundle game logic changes into this documentation/artifact task.

## Guidance for future generated-data reviews

- Never commit thousands of complete regenerated histories just because an analyzer prints them. Store seed lists, hashes, statistics, review notes and a **small curated raw sample**; regenerate the full corpus on demand outside Git.
- Large exceptional fixtures are acceptable only when current tests or irreversible evidence truly require exact bytes.
- Document the tool command/version, seed range, observed failure counts, content revision and qualitative sampling method; keep genuine raw examples where their exact words are the evidence.
- Do not rename/delete `docs/wiki/` Notion-mirrored paths merely to tidy prose; source paths are synchronization identities.
- Before any further deletion: prove unreferenced by runtime/tests, preserve a retrieval path, check the candidate against target branch, then run available focused/full tests.

## Validation checklist

- Structural tree diff: only six generated large exports, one screenshot `.import`, docs/link/policy corrections.
- `git diff --check` and old-link audit (no surviving link to deleted exports in active docs).
- Test suite when accessible; code/test/content untouched by this pass.
- V5 base snapshot evidence remains in `docs/reviews/history_v5/validation.md` (39 scripts, 9,068 v5 checks, 5,000-world replay) but is **not** a new test result for this cleanup.

## Follow-up integration

The project-wide **Player Experience First** decision is on separate PR #44. Preserve it while integrating documentation branches. This branch is based on unmerged v5; do not merge it straight into `main` before handling v5's own integration and outstanding semantic review. The intended flow is review/merge into the v5 branch, then integrate v5 deliberately after its independent acceptance.
