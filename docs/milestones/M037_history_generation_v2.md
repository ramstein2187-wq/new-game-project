# M037 — History generation algorithm v2

2026-10-06. **Complete on task branch; not merged main.**
Branch `codex/history-generator-v0.2`.
Required base `chat/observer-lore-update` / `11127ef59029879f5a517fc1ae405df0c2eb6dcf`.
Worktree `C:\GameDev\history-generator-v0.2`.

## Outcome

M036 architecture remains v1; history generation is v2. Replaced the shared giant
variant with independently seeded precursor/pressure/response/collapse/successor/recent/
discovery/belief axes. Added bounded separate-system traces, Observer terminology
knowledge gate, owned M035 canonical names and contextual claims. Authoritative lore,
prototype naming content, SeedDeriver and gameplay were preserved.

## Validation

- Focused history: 48,463 assertions, 1000 exact seed replays and expanded negative cases.
- Naming: 30,266 assertions in the full 32-script Godot check.
- Full `bash tools/check_godot.sh`: all tests, editor import, main smoke and exact exporter pass.
- 1000-seed analysis: zero invalid; all 22 primary pressure motifs; 1000 recipes,
  344 event-type topologies. No Observer/Core85.7%; Observer4.5%; Core10.2%; bombardment0.7%.
- Ten representative readable histories inspected by Codex against ten requested quality
  questions; two complete outputs embedded in [review](../reviews/2026-10-06-history-generator-v0_2.md).
- Offline wiki17/spec15 checks, generated dataset fingerprints and layout183resources /
  135UIDs /7scenes pass. Original14dirty/untracked file hashes unchanged.

User manual/editor/play, exported package, balance, specialist prose/name-language
acceptance and live Notion synchronization are separate and were not performed.

## Resume and handoff

[Detailed implementation and delivery review](../reviews/2026-10-06-history-generator-v0_2.md)
includes all23 requested report topics, five-plus summaries, ten quality questions and
full outputs. [Diversity JSON](../reviews/history_v2/diversity.json) and
[ten complete reports](../reviews/history_v2/samples.md) are reproducible with
`tools/analyze_history.gd -- 1000 OUTPUT_DIRECTORY`.

External work record/baseline/final delivery record are retained under `C:\GameDev`:
`history-generator-v0.2-work-record.md`, `history-generator-v0.2-user-baseline.json`,
`history-generator-v0.2-completion.md`. Final branch commit/push SHA is recorded there
and in the delivery message. No main integration or gameplay/world-map/save connection.
Next step is explicit year-0 worldgen/faction ownership consuming projected stable IDs,
provenance and canonical names; do not treat claims as objective state.
