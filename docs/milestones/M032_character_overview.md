# M032 — Character Screen Overview v1

Status: **Complete on task branch; manual acceptance pending** on `codex/character-overview-v1`.
Base: fresh `origin/main` at `fedde4a`, M031 integrated; 2026-09-30 KST.
Workspace: `C:/GameDev/character-overview-v1`.

## Scope and continuation record

- Read AGENTS, ROADMAP, MILESTONES, M031 and current Actor/Body/Equipment/Combat/
  Effects/Action Cost/input implementations before edits.
- Original checkout remains on main with 12 pre-existing untracked EverRogue imports.
  Use WSL Git for fetch/worktree/push; never stage asset import artifacts.
- Overview only: identity, six attributes, HP, basic attack/damage/penetration,
  raw weighted Average Armor, cardinal Move Time, existing body/effect state.
- Hover gives quick explanation; click/keyboard selection opens reusable Inspector.
  No progression, new stats/rules, future tab screens, status features or caching.
- Attribute Effects are query-only in M031 except movement_speed. Display resolved
  primary values with AbilityScores.modifier; attack explanations must explicitly
  follow the base AbilityScores still used by combat. No gameplay wiring changes.
- Body armor query normalizes max(0, weight), treating unarmored sentinel -1 as 0.
  Injured/disabled parts remain in hit selection. No attacker/profile information.
- Input opens via new unoccupied C action; modal input blocks gameplay/debug edits
  without pausing simulation. Reopen/refresh queries current Actor, including reset.

## Implementation and validation — 2026-09-30 KST

- `game/ui/`: CharacterScreen, InspectableValueRow, reusable CharacterInspector,
  CharacterOverviewQuery and CharacterOverviewText; `scenes/ui/character_screen.tscn`.
  Host integration is limited to F5/F6 scene wiring/help/input guards.
- Pure Body armor query and shared TimeCostGame.attack_breakdown are implemented.
  Combat retains legacy attack_part write, RNG calls and event order; query does
  not invoke mutating attack_efficiency. No authored content/rule/stat values change.
- Editor import/parse and default startup passed on Godot 4.7.2. Full
  `bash tools/check_godot.sh` passed **28 scripts**, exact dataset export check,
  M031 **405** assertions, movement/paired golden and M027/M024 replay fixtures.
  New query suite **281** assertions; scene/input/layout suite **162** assertions.
  No ERROR/FAIL/WARNING lines in final full-check log.
- Layout audit passed 143 resources, 104 script UIDs and 7 instantiated scenes.
- Offline wiki metadata **15 pages** and knowledge **11 specs / 6 datasets** pass.
  A new wiki/spec/SVG explains presentation/query ownership and weighted armor.
  Only the generated manifest's TimeCostGame fingerprint changed; equipment and
  monster dataset bytes, authored Resources, old fixtures and AI/scheduler unchanged.
- Actual NVIDIA/OpenGL renderer generated 1920×1080, 2560×1440, 3840×2160 and
  640×480 PNGs; inspected hierarchy, wrapping, panel placement and narrow scrolling.
  Automated rendering/inspection is not user manual gameplay/readability acceptance.
- During development, initial wrapped Label sizing caused oversized rows; listening
  to Label resize corrected row minimum heights. Headless mouse tests now explicitly
  use viewport-local coordinates and logical canvas size, since dummy window resize
  does not alter physical display. Final tests pass without workaround gameplay edits.
- Logs: `C:/GameDev/character-overview-v1-{import,query,ui,export,full-check,render}.log`.
  Captures: this worktree's `.godot/character-overview-captures/overview-*.png`.
  Reproduce with graphical Godot `--rendering-method gl_compatibility --script
  res://tools/capture_character_overview.gd`; omit --headless for real image output.

## Manual verification and limits

1. Open this worktree in Godot 4.7.2. F5 generated map, then F6 fixed room.
2. Press C: confirm full-screen Identity/Overview/Inspector, six attributes, health,
   current weapon/dice/penetration, average raw armor and cardinal Move Time.
3. Hover every value and click/Tab+Enter: compare quick tooltip versus Inspector
   sources. Inspect armor contributions, stat formula/provenance and move cost steps.
4. While open, try movement/keypad/wait/R/E and clicking underlying debug controls:
   gameplay must stay unchanged. Close via C/Esc/Close and confirm normal controls.
5. Change abilities/weapon through existing debug controls, or acquire body injury
   through existing combat; reopen and verify current runtime values. Reset / next
   seed then reopen to verify the new Actor, including unavailable movement/attacks.
6. Resize to target resolutions and a small window: check readability, focus/hover,
   scroll access to all information and Inspector text. Small windows stack columns.

Only Overview is functional; other four tabs are disabled. No sprite/portrait was
invented for the circle-based combat prototypes. Effects currently lack display-name
metadata, so labels are humanized IDs. Provenance appears in Inspector, not base rows.
Primary stat Effects remain query-only for combat; attack Inspector explicitly reads
base AbilityScores. Fractional attribute modifiers truncate at the existing int API.
No independent accuracy/attack-bonus/dodge, new status, progression, save/load or new
combat/equipment/body/Effect mechanics were added. Manual play/readability, exported
packages and live Notion sync remain unperformed.

## Delivery boundary

Review/stage only M032 source, scene, tests/UIDs, documentation and the generated
manifest. Asset imports are excluded. Commit/push the task branch, never merge main.
Git delivery SHA and push result are also retained in the local delivery work record.