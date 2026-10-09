# Localization and Text Authoring — Korean-first, multilingual-ready

Status: **accepted direction; M048 Korean foundation implemented on codex/m048-korean-playtest-localization; validated on task branch; main not merged**. Date: 2026-10-09.
Applies to the Godot CRPG's player-facing UI, logs, interaction messages, authored lore, dynamic descriptions, procedural naming and future content. This decision **does not claim a shipped localization system** or assign a milestone number.

## 1. Goal and priorities

- **Korean is the default player-facing language** for current prototyping and manual play; English is a supported future target, not a requirement to complete every translation today.
- Preserve the same world, history, mechanics and save data when the displayed language changes. Language selection is a presentation preference, never a simulation parameter.
- Prefer natural, concise game prose over literal word-for-word translation. The same technical fact may need different sentence structure in Korean and English.
- Keep worldbuilding authority intact: translation must not turn an unknown cause into a known cause, a rumor into an objective fact, or a lost technology into an operable device.
- Support accessible, readable Korean now without building a full translation management platform prematurely.

**Boundary:** game rules and Canon determine *what is true*; localized presentation determines *how a player with particular knowledge sees it*.

## 2. Canonical identity vs display language

A durable record stores stable **identities and semantic facts**, not localized text:

| Data owner | Store / compute | Localize only for presentation |
| --- | --- | --- |
| Action, item, resource, effect | Action ID, kind, state, quantity, cost, reasons | Verb, item name, reason, units |
| History / World Manifest | Event ID, Project/Scar kind, actual facts, provenance, uncertainty | Labels, verified observations, narrative |
| NPC, faction, site | Stable entity ID, canonical name representation when available | Rendered name, title, inflected sentence |
| Save / runtime | Schema/version, ownership, time, state, knowledge | UI descriptions of saved state |
| Developer diagnostics | Raw IDs, structured causes, reproducible traces | Optional readability aids; raw form remains available |

Never translate enum values, JSON keys, `asset_kind`, `owner_id`, `rule_id`, `source_id`, save fields, seed namespaces, event-log contents or Golden fixtures just to change language.
A locale switch must not reseed world generation, rebuild historical facts, alter gameplay RNG or rewrite saves.

### Procedural naming integration

M035 already defines locale-independent `GeneratedName` and pure `NameRenderer.render(name, locale)` for `ko`/`en`. **Reuse this contract** rather than converting an English generated name into Hangul or storing its Korean output as canonical identity. Keep naming catalog/version compatibility and explicit errors for unsupported locales. Phase C's raw locality/faction IDs are placeholders, not a precedent for displaying IDs in production UI.

Display language must be passed to name rendering at the boundary. Switching languages rerenders the **same** canonical entity, not a newly generated name. Hand-authored proper names and terms should have explicit preferred forms when necessary.

## 3. Translation assets and code boundary

- Prefer **Godot-native localization** (project translation resources, `TranslationServer`, `tr()`, contextual `tr()`, `tr_n()` where appropriate), rather than a custom global string-replacement manager.
- Prefer per-locale **gettext PO** catalogs for growing content, translator context, pluralization and Git-friendly diffs; CSV may serve a tiny prototype but should not become a competing second authority. Verify exact APIs/import behavior on the installed Godot version before implementation.
- Use stable, context-aware message identifiers or source messages consistently. If opaque keys are chosen, validate that untranslated keys cannot leak into the player UI. A missing translation must be detectable in CI rather than silently accepted.
- Dynamic text uses **translated full sentence templates with named arguments**, never grammar hardcoded around English word order. Translate the enclosing sentence and only then substitute safe rendered terms/numbers.
- Localized user messages are presentation outputs. Game conditions, permissions, checks, event reasoning and persistence never depend on matching translated strings.
- Do not persist final localized messages in game state when canonical event/reason data can reconstruct them. Text-only authored evidence remains distinct from mechanical truth; changing a prose translation must not mutate the underlying historical event.
- Use one small reusable display/translation boundary for shared terms and semantic reason codes. Do not invent numerous one-off dictionaries or a large localization framework before actual content demands it.

### Korean grammar and future languages

Korean word order, spacing, postpositions (조사), counters and titles must be authored as locale-specific patterns when needed. Do not assume `name + "을"` or English possessive templates work for arbitrary proper names. For critical messages, author a full Korean sentence that avoids brittle particle logic, or introduce a minimal tested grammar helper **only when needed**.

English pluralization/context should use the engine's supported translation mechanisms; do not infer plural grammar from a universal `count == 1` rule. Numbers, units, dates and punctuation are presentation concerns. Preserve unambiguous raw values in developer logs.

## 4. Lore lexicon, authored and generated text

Maintain a concise **controlled vocabulary** for official terminology and the difference between developer knowledge, observed facts and in-world claims.

Initial glossary (confirm spellings against the latest Canon at implementation time):

| Canonical concept | Korean-facing form | English-facing form |
| --- | --- | --- |
| Innerworld | 심층 | Innerworld |
| Outerworld | 외우주 | Outerworld |
| Deep Descent | 심층 진입 | Deep Descent |
| Orbital Fall | 궤도낙하 | Orbital Fall |
| Genome Archive | 유전체 보존 사업 | Genome Archive |
| Infrastructure Cascade | 기반시설 연쇄 붕괴 | Infrastructure Cascade |
| Failed Exodus | 실패한 탈출 | Failed Exodus |
| Project (generic concept) | 사업 / 장기 사업 (맥락에 따라) | project |
| Scar (historical consequence) | 역사적 상흔 / 흔적 (맥락에 따라) | scar |

This table is a **localization starting point**, not permission to rename identifiers, overwrite established Canon, or claim every in-world character knows these technical terms. Developer/UI/character knowledge levels may render differently based on evidence and viewpoint. For example, observing damage does not reveal who caused it.

Long-form lore and historical claims should retain source, speaker, certainty and player-known filtering. Their localized sentences must not independently generate new objective facts. A rich narrative renderer should consume structured causes/claims and authored prose templates, not invent causality from locale-specific wording.

## 5. Player settings, UI and fonts

- Default the current Korean playtest to `ko`. Eventually offer `ko` and `en`, with user choice persisted in **local preferences separate from world saves**. OS-language auto-selection may be an optional setting, not an overriding requirement.
- Language changes should refresh visible labels, interaction prompts, journals, current descriptions and generated names **without changing game/runtime state**. If a system cannot refresh live, document a safe restart behavior rather than silently mixing languages.
- Maintain one consistent per-language fallback policy and test missing translations. Korean launch/playtest coverage is a release gate for Korean-facing surfaces; English should only be exposed as a finished language once coverage is adequate.
- Use project-distributed, **license-verified Hangul-capable fonts** and Godot font fallbacks. Test missing glyphs, mixed Korean/Latin/numerals, UI scaling, clipping and line wrapping at the smallest supported windows and common desktop resolutions.
- A wider text string, variable proper name and accessible sizing must not require fixed-width labels. Use containers, wrapping, scrolling, truncation with inspectable full text where justified.
- Track redistributed fonts in THIRD_PARTY.md. M048 bundles Noto Sans KR 2.004 under SIL OFL 1.1.
- Keep keyboard action bindings and input identifiers independent from the language of the displayed action name.

## 6. Testable acceptance gates

For each player-facing feature that introduces text:

1. **No English leak in normal Korean play** (unless it is an intentional proper name, abbreviation or developer view). No raw snake_case IDs, message keys or dictionary dumps in normal UI.
2. A selected message can be rendered in each supported locale; placeholders and required terms are present and correctly typed. Contextual variants and unknown/uncertain wording stay faithful to their source.
3. Language switching (when implemented) changes display **only**; save snapshots, RNG, Event Log, Manifest, mechanics and canonical GeneratedName are identical.
4. Korean Hangul and mixed-script text render in actual Godot captures without tofu, clipping, unreadable size or broken layout; long procedural names and long combat logs get explicit fixtures.
5. Failure/success messages, control hints, Character Overview, inspected objects, scars, projects, items and optional historical records are covered—not only static buttons.
6. Localization tests compare **semantic event data** separately from localized wording. Existing v2–v6 Golden/history and combat regression outputs remain unchanged.

Manual native-speaker review is required for terminology, tone and lore consistency; green automated tests alone do not prove writing quality.

## 7. Incremental rollout, not a giant new framework

**Step 1 — M048 Korean playtest:** Korean UI labels, input help, messages, inspect/results and record views, while preserving raw debug traces and runtime/save contracts. Supply Hangul font and verify screenshots. Introduce only the minimal Godot translation resources needed.

**Step 2 — Common display contract:** unify repeated action/condition/item names and reason-code rendering in Character Overview, combat logs, gameplay overlays and future inventory. Add a terminology coverage check.

**Step 3 — Generated names and narrative:** connect M035 locale-independent name rendering to actual NPCs/sites/factions. Expand authored narrative templates with provenance, uncertainty, speaker/player-knowledge filters, and Korean grammatical tests.

**Step 4 — Release-ready multilingual UX:** in-game language preference, complete English coverage, runtime language switching, text expansion/overflow review, content workflow, translator notes, accessibility and packaging audit.

Step 1 and the M048 portion of step 2 are implemented as specified in section 9. Remaining steps require concrete tasks; this does not complete whole-game multilingual support.

## 8. Ownership and follow-up

- `docs/decisions/localization_and_text_authoring.md`: durable design decision (this document).
- `docs/wiki/localization_strategy.md`: short human-facing wiki overview; mirrored to Notion when its source reaches main.
- `docs/ROADMAP.md`: future work state; the implementation is an M048 follow-up with no new milestone number.
- Existing `docs/decisions/procedural_naming.md` and the latest Canon remain authoritative within their domains.

## 9. M048 implemented foundation (2026-10-09, task branch only)

- Korean authority: `locale/ko.po`; English source templates: `locale/messages.pot`. Installed Godot 4.7.2 loads PO natively. Controls use automatic translation / tr(); GameText uses TranslationServer.translate / translate_plural, term context and named String.format after translation.
- GameText is a pure display adapter, not an autoload. LocalizedCharacterText consumes existing CharacterOverviewQuery values and ordered resolver steps without recalculating stats, HP, costs, damage or armor. The original English Overview presentation is retained.
- Interactions expose locale-free transient notice (code/args). CombatEvent data adds result_code, result_args, custody_violation; old English result, diagnostics and debug formatter remain. Translations never enter events. Raw decoder/Actor-codec errors remain diagnostic; ordinary UI displays an invalid-save reason and F3 retains raw data.
- Default locale is ko. GameText.apply_preference / save_preference use only `user://presentation.cfg`. No language menu. Native locale notifications refresh UI without generating/reloading a world. English source fallback is a development view, not completed whole-game localization.
- Manifest, RuntimeSave schema, WorldActorState, histories, naming content/algorithms, predicates/order, costs, AI and RNG are unchanged. Integer casts for loaded JSON numbers occur only during display.
- Current M048 Actor/Locality/Site/Faction schemas contain no GeneratedName. GameText.name delegates actual canonical names to M035 (tested with its fixture); live entities remain unconnected. Regions/communities use stable Manifest ordinal display labels. Known prototype labels are translated without inventing/storing identities.
- Bundled Noto Sans KR Regular 2.004 supplies Hangul without system fonts. Containers, wrapping, independent scrolling, stacked small Character modal, physical shortcut precedence and logical fallback retain the existing UI/input contract.

[Implementation record](../milestones/M048_korean_localization_followup.md). Deferred: actual OS IME/human language acceptance, package QA, whole-game coverage, richer authored effect/source labels, actual canonical-name binding and complete language selector.
Native APIs were checked against [Godot gettext documentation](https://docs.godotengine.org/en/stable/tutorials/i18n/localization_using_gettext.html) and verified on the installed engine.
