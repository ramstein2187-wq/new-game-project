# M017 — Combat and body phase 1

Status: **Complete on `main` at `7276272` — user manual verification confirmed on 2026-09-21.** Integrated with selected M018 through [PR #4](https://github.com/ramstein2187-wq/new-game-project/pull/4); 17 combined automated scripts passed. Merge verified on resume 2026-09-22; [integration record](../reviews/2026-09-21-m017-m018-integration.md). The agent did not perform the native GUI playthrough.

Implementation specification: [combat/body design](../CRPG_combat_body_phase1_design.md).

## Investigation / decisions (2026-09-21)

- Read AGENTS, roadmap, milestone index, M016, time-model and explainability decisions, Action/game/AI/log/scene code and related tests.
- Baseline: main `ac89eaf`; unrelated untracked tileset imports and September 20 review files are preserved and excluded.
- Existing attacks always hit for 1, HP is 5/3; no DV, abilities or attack-stat rule exists. Adopt STR melee, DEX bite, DV 10 + DEX modifier, no natural-roll exceptions.
- Use HP 50/30 and damage 5 with specified part integrity. This allows limb damage before HP depletion; fear is normalized to HP fraction to preserve M015's behavior thresholds.
- Preserve scheduler, player-priority ties, shared Action pipeline and AI candidate filtering. Invalid actions remain free/no event; miss/block are valid attacks and consume normal cost.
- Vital integrity zero disables that part and descendants; only overall HP zero kills. This avoids a second death path and permits testing disabled bite on a living rat.
- Weapon attack binds to one manipulation-capable part at instance creation (last matching slot, right arm in current template); no automatic offhand transfer. Locomotion averages all original contributions (healthy 1, damaged .5, disabled 0), cost = ceil(base / efficiency); zero means unavailable.
- New combat RNG is per game, seeded independently of map generation. Pure probability queries never consume it.

## Implemented

- `time_cost/combat/`: six abilities and 12-point allocation, pure D20/probability/armor rules, Resource species/templates, deep-copied body instances and shared developer panel.
- Both fixed-room and generated-map scenes: allocation/refund/reset UI, attack/movement function status, per-part tooltip, separately scrolling log. Full reset restores body/HP/scores/RNG; ability-only reset preserves wounds and HP.
- Attack path: existing input/AI -> `perform_action` validation -> `AttackAction` -> D20 -> weighted part -> optional one-layer armor draw -> part injury and one HP deduction -> existing log/scheduler/death handling. Failure to find a valid part causes zero damage safely.
- Right-arm damage changes melee accuracy and disables that bound attack at zero; rat foreleg damage increases approach/retreat time without disabling bite; head damage impairs/disables bite. Capability selection has no species/right-arm conditional.
- Existing candidate filtering removes unavailable attacks/moves and retains positive-cost Wait; reasons for function loss are recorded only when actually evaluated. No new scheduler or AI framework.
- Trace retains D20, ability/proficiency/situation, DV, attack/target part, applicable E and armor roll/outcome, delivered damage/type, before/after integrity/state, HP, actual AI reasoning and original action cost. Normal log distinguishes miss/block/injury/death without exposing AI scores.
- See [durable decision](../decisions/combat_body_phase1.md). No design principle was changed; numeric/open-rule choices above and in the specification are explicit.

## Automated validation — 2026-09-21

- `bash tools/check_godot.sh`: Godot **4.7.2.stable.mono.official.ed1daf0bf**, editor import/parse and main startup passed; **15/15 test scripts passed**, no script errors. [Captured output](../reviews/2026-09-21-m017-validation.txt).
- New `tests/test_combat_body.gd`: allocation/defaults/bounds/refund, negative modifier floor, D20 equality and exact probability enumeration, no natural exceptions, all E table entries and damage conversion boundaries, per-instance isolation, weights/missing/zero-weight parts, custom capability part ID, ancestor effects, conditional RNG draws, seed/action replay, actual attacker/DV stat updates, actual HP/part deduction, block/miss/free rejection costs, approach/retreat/player injury costs, incapacitated AI fallback, death lifecycle, real-hit arm/leg/head function changes, both scene UI signals/reset/binding and nonoverlapping panel/log/header bounds.
- Existing 14 tests retained. Guaranteed-hit assumptions use an explicit test-only high-STR/unarmored fixture, preserving their scheduler/event/death assertions. Injured-AI tests retain the old 1/3 HP ratio under the new scale. No production guaranteed-hit mode was added.
- `tools/probe_combat_body.gd`: 500 reproducible adjacent-start encounters (seeds 0..499), default traits/stats/armor, stopping on separation/incapacity/death/30 actions. 7,229 attacks: 3,360 misses, 680 full blocks, 699 partial, 325 bypass, 2,165 unarmored. Wounded player arm in 32 samples; rat legs in 443; rat bite impaired in 247. 496 samples separated, four player defeats, no rat defeats/player attack loss before stopping. This is **not** a whole-game win-rate estimate. [Output](../reviews/2026-09-21-m017-balance.txt).
- Diff reviewed; whitespace check passed. Automated UI geometry/input checks are not manual visual approval.
- All five `tools/play_combat_body_scenario.gd` diagnostic setups passed headless startup with `--quit-after 5`; [output](../reviews/2026-09-21-m017-scenarios.txt). Interactive controls/function behavior are covered by the tests above; native GUI play remains the user's gate.

## Manual verification procedure / recorded sign-off

The user confirmed both M017 and the latest M018 1.4× diagonal-cost version were manually verified, then requested their integration. The procedure below is retained for reproduction. Integration-specific corner fixes have automated coverage; no new user playthrough of those fixes is claimed.

1. Press F5 in Godot to start `time_cost/generated_map_combat_playground.tscn` (selected as the default after the user's procedural-map play request). For focused comparison, open `time_cost/time_cost_test_room.tscn` and run current scene (F6). Use a 1152×648 or larger window for the current fixed layout.
2. Use six +/- rows: spend 12, check 10 minimum/16 maximum, refund and reset. Confirm ordinary movement/wait hotkeys still work after mouse clicks. Bump rat to attack; E opens fixed-room door; Space/Enter waits; L/F3 switch logs; scroll detailed traces. Check D20/part/armor and visible miss/block feedback.
3. Observe tooltip and attack/move status after injuries; ability reset must not heal. R restores a healthy fixed room; on generated map R replaces map/game and rebinds the panel. Verify readability, map/log separation and both death/reset paths visually.
4. For repeatable injury diagnostics, run the engine with `--path <project> --script res://tools/play_combat_body_scenario.gd -- human-arm-damaged` (omit `--headless` for manual play). Other cases: `human-arm-disabled`, `rat-leg-damaged`, `rat-head-damaged`, `rat-head-disabled`. These inject a declared starting wound, not fabricated attack events. Right bump checks impaired/unavailable attack; waiting checks rat behavior; rat leg move cost is 858. R exits the wound fixture into a normal healthy room.
5. Manual gate satisfied by the user's 2026-09-21 confirmation and integration request; delivery is tracked through PR #4.

Follow-ups are tracked in the roadmap: balance/severe-arm-injury frequency and encounter pacing, small-window/responsive UI if needed, externalized content when needed, deeper body/equipment/persistence systems outside phase 1. Manual validation is user-reported, not agent-performed.

## Initial branch delivery (historical)

- Implementation commit: `ae8ac1a` (`feat: implement M017 D20 combat and capability-driven body injuries`). Pushed to `origin/codex/m017-combat-body-phase1` on 2026-09-21; this delivery record follows as a documentation commit.
- Windows Git push hit SSH host-key verification failure; the existing WSL Git environment successfully pushed with `bash -c 'git push -u origin codex/m017-combat-body-phase1'`. No SSH verification/configuration was weakened.
- At initial delivery, the manual gate was still pending and main was not merged. That gate was subsequently satisfied as recorded above. Unrelated pre-existing tileset imports and September 20 review files remain untracked and untouched.

## Local play follow-up — procedural-map entry point

- The user requested playing this system on the procedural map after trying the fixed room. Rechecked the existing generated-map adapter: it already shares the M017 body, abilities, armor, actions, AI and log, including resetting/rebinding the panel when R generates the next map.
- Changed only the project startup scene to the generated-map combat playground so ordinary F5/local project launch reaches the requested environment. The original main scene and fixed-room scene remain available for F6 comparison; no duplicate combat implementation was added.
- Validation and local launch are recorded in `docs/reviews/2026-09-21-m017-local-play.md`; later user manual acceptance and M018 integration are recorded above.
