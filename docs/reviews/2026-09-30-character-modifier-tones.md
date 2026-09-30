# Character Inspector modifier tones — 2026-09-30 KST

Status: Complete on task branch; manual acceptance pending on codex/character-overview-v1, base 8da69c2.
Scope: presentation only. No gameplay, resolver, content, query schema, layout,
CombatRules, EffectStore or new tooltip framework changes. Follow-up to M032;
no new milestone for this small readability refinement.

## Start / continuation

- Read repository AGENTS, ROADMAP, MILESTONES, M032 and current text/Inspector/row
  implementations and both M032 tests. Remote task branch equals local HEAD.
- Pre-existing project.godot edit expands C's InputEventKey serialization/device16.
  Preserve it byte-for-byte and exclude it from commit. Preserve 12 asset imports.
- Inspector is plain Label; hover is native tooltip. Keep hover plain and unchanged.
- Plan: small scalar text/tone spans alongside existing plain body, central palette,
  RichTextLabel renders spans with add_text/push_color, avoiding BBCode parsing.
  Only explicit signed modifiers gain green/red; zero/ordinary numbers neutral,
  final values neutral emphasis. Labels and +/- signs retained.
- Remaining: implement; meaningful tone/render/plaintext/nonmutation tests; M032
  tests and full check_godot; rendered healthy/injured/Effects/move QA; wiki and
  local record; review intended diff, commit/push without main merge.
## Implementation and verified evidence

- Runtime edits are confined to CharacterOverviewText, CharacterInspector and new
  InspectorNumberStyle. The query and authoritative gameplay data/schema are unchanged.
- Existing plain body remains; optional body_spans carries literal text plus the
  NEUTRAL/POSITIVE/NEGATIVE/RESULT role. Formatting assigns roles explicitly at
  modifier sites, never by scanning signed substrings in arbitrary labels/text.
- Positive #7FD38A, negative #E07A7A, neutral #D7E7F5, result #EEF3F7 in one palette.
  Only modifier numeric spans are green/red. +/- signs and labels preserved. Zero,
  signed zero, and tiny values displayed as +/-0 are neutral. Results use a slightly
  brighter neutral; no bonus/penalty color or global Theme refactor.
- Applied: individual stat/Effect PERCENT/FLAT, attack ability/proficiency/situation,
  damage ability modifier, nested movement-speed Effect and action-cost modifiers.
  Resolved stat / Attack Bonus / Damage / final cost use RESULT emphasis.
- Intentionally neutral: labels, HP, armor, penetration, probabilities/weights,
  base/divisors, intermediate values, pooled percent/flat totals and source IDs.
  Cost delta color follows its numeric sign; it does not infer gameplay benefit.
- Native plain-text tooltips/InspectableValueRow and Character Screen layout unchanged.
- RichTextLabel uses direct add_text, with styling only around non-neutral spans.
  No dynamic BBCode parsing. Neutral text is added at root level to preserve line
  breaks, avoiding a line-break artifact seen during graphical QA with neutral tags.
- Test_character_modifier_tones: 53 assertions pass (sign/zero/result/ordinary values,
  positive/negative/zero Effect and cost, negative/zero final totals, nested sources,
  rendered plain-text identity, dynamic literal markup, no query mutations).
- Existing M032 query281/input162 and M031405 assertions pass. Full
  bash tools/check_godot.sh passes all 29 scripts, import/parse/default startup,
  unchanged M027/M024 replays, M031 movement/paired golden and exact datasets.
- Baseline-vs-current text audit: 172 comparisons across healthy, injured, Effects
  and movement-unavailable states preserve title/value/body/hover byte-for-byte.
- Wiki metadata15 pages/spec11 validation passes. No changes to Actor/Body/Combat/
  Action/EffectStore/AI/Scheduler/content, fixtures, query or generated datasets.
- Actual NVIDIA/OpenGL captures: healthy attack (+3/+2/+0 and final +5), injured
  attack (-2), attribute Effects (+20%/-1/0), move Effects (+0.25/-20%/+50), move
  without modifiers, HP and armor. Inspected numeric-only colors, neutral results,
  wrapping and original text. Synthetic test Actors/Effects only; no runtime content
  additions. Automatic captures do not establish human manual acceptance.
- Contrast against existing Inspector background #252B33 exceeds 4.5:1 for every
  palette color. Exact ratios are in .godot/modifier-tones-contrast.log.
- Hash audit preserves pre-existing project.godot and asset imports. None staged.

## Local evidence / manual reproduction

Logs, preserved hash snapshot and text/contrast audits: .godot/modifier-tones-*.log.
Graphical fixture runner: .godot/capture-modifier-tones.gd; PNGs:
.godot/modifier-tone-captures/{attack-healthy,attack-injured,attribute-effects,
move-effects,move-neutral,health-neutral,armor-neutral}.png.

Manual: open this worktree in Godot 4.7.2, F5 or fixed-room F6, set STR16 using
existing debug controls, press C, inspect Damage/Main Attack. Expect ability+3 and
proficiency+2 green, situation+0 neutral, Attack Bonus+5 neutral emphasis. Use
existing combat/debugger to damage both usable arms to <=half integrity; inspect
negative situation in red. Existing Actor.add_effect API can insert the synthetic
fixture from the test for positive/negative/zero stat and cost cases; inspect STR
and Move Time, then remove it. Base/final timing, armor and HP must stay neutral.
Check readability at smaller windows, scrolling, and signs/labels without relying
on hue. Interactive human play/readability acceptance remains unperformed.

## Delivery

Commit only reviewed UI/palette/test/UID/wiki/work-record files to the existing
codex/character-overview-v1 branch and push. Do not include project.godot or imports,
or merge main. Commit SHA and push result will be saved in local delivery Markdown.

## Follow-up: single divider before final results

User requested a single line separating final results. CharacterOverviewText now
defines one neutral divider reused immediately before Resolved attribute values,
Attack Bonus, Damage and valid Final Move Time. Tone/sign rules, plain hover,
resolver queries and gameplay data are unchanged. No divider is added to an
unavailable Move reason. Updated the current-system wiki in the same change.
Validation: full tools/check_godot.sh passes all 29 test scripts, including the
53 semantic-tone assertions and existing M032 query/input/layout tests, plus
dataset freshness. Actual graphical fixture captures confirm single-line neutral
dividers before all four result types at 1920×1080; the 1152×648 attack capture
also confirms a single line. The divider uses 12 box-drawing
characters so the current Inspector width does not wrap it. Graphical captures
remain separate from human interactive play approval. All 13 pre-existing user
files retain their SHA256 hashes; project.godot and imports are excluded.
Logs: .godot/result-divider-check.log and .godot/result-divider-render*.log.
Delivery SHA/push evidence: .godot/result-divider-delivery.md after commit/push.
