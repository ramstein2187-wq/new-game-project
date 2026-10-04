# Procedural Naming v1 (M035)

Date: 2026-10-05. Implemented on `codex/procedural-naming-v1`; not merged main.

## Identity and display

A generated identity is `GeneratedName`, a native Resource with naming version,
culture ID, name type, template ID and named canonical components. Components
contain phonetic token IDs, semantic token IDs or an integer; never an English
name. Generation takes no locale. Rendering takes a locale and does not mutate
the identity. A language change therefore keeps the same NPC/site name identity.
This foundation is independent of current Actors/UI and does not integrate them.

Phonetic tokens map directly to authored locale forms (`vei` -> `vey` / `베이`).
They are concatenated per slot; listed locales capitalize the first letter.
There is no English-to-Hangul transliteration. Semantic tokens translate meaning
(`ASHEN` -> `Ashen` / `잿빛`). Mixed names use separate proper/feature slots.
Each locale authors its own complete placeholder pattern, including possessives
and order. Numeric slots store bounded nonnegative integers and render decimal
digits. This is a small slot/template grammar, not a language AST/morphology engine.

## Content authority and validation

`content/naming/catalog.tres`, `cultures/*.tres` and `templates/*.tres` are
authoritative Godot Resources. Token/slot/template/culture classes live in
`game/naming/`. The validated catalog owns one deeply duplicated snapshot and
indexed token/template/culture maps; lookups return strings or isolated definitions.
Default catalog loading is once per process, never once per render. Restart after
editing content; no live reload or complex cache/registry is introduced.

`required_locales` defines supported locales (en/ko in v1); dictionary forms and
patterns allow another locale through data authoring. All tokens and patterns
must supply every required locale. Each named slot appears exactly once per
pattern; unknown/unbalanced/repeated placeholders are rejected. Token forms
cannot introduce braces. Invalid catalogs are rejected as a whole. Invalid
generation returns null; invalid rendering returns an empty string, both with
`last_error`. Unknown locale has no silent fallback. Canonical validation rejects
unknown culture/template/token, wrong name type/kind/count and invalid numbers.

## Determinism and compatibility

Use unchanged `worldgen/seed_deriver.gd` (deriver version 1). Naming has its own
`NameGenerator.NAMING_ALGORITHM_VERSION = 1`, a separate compatibility contract.
The scope contains world seed, culture, caller-owned stable entity key, name type,
naming version and attempt. Template, each slot and each phonetic component use
independent freshly seeded RNGs. Another generator's call count cannot affect names.
Slot IDs rather than slot indices isolate additions/reordering of unrelated slots.

Ordered template IDs and ordered token pools are part of generation compatibility.
Changing grammar, token membership/order or selection algorithm can change worlds;
explicitly bump/pin naming version and retain old content or migrate deliberately.
Forms/pattern edits change display text, even if canonical tokens stay the same.
This version does not implement legacy-version dispatch. Future save data may
store the canonical name (recommended), or store world seed/stable entity key plus
naming version and pin the exact content revision. Version alone cannot preserve
names if old grammars/pools are overwritten. Restoring a canonical name still
requires its referenced token IDs/templates and compatible forms to be retained.
No save/load system is implemented; only Resource/dictionary roundtrip support.

## Reserved results

Catalog reserved canonical keys and locale display lists plus caller blocked lists
are extension hooks for handcrafted names. Display comparison uses strip_edges
and Unicode lowercasing, without fuzzy matching or Unicode normalization. Check
every required locale independently of active language. Include attempt index in
the seed scope; default 8 attempts, explicit integer range 1..32. Exhaustion returns
null with a diagnostic. Callers own stable entity IDs and reservation policy;
there is no global uniqueness guarantee or world NameRegistry.

## Provenance and scope

Both `prototype_surface` and `administrator` are explicitly prototype cultures.
All 24 phonetic components, 14 semantic tokens and six grammars are original
hand-authored synthetic validation content, not final lore. No outside names,
datasets, scraped lists, DB/API rows or research material were retrieved for M035.
No third-party naming material is shipped and no runtime network/API is used.

Future research is restricted to authoritatively verified CC0 Wikidata structured
data; this does not authorize Wikidata prose. GeoNames, Behind the Name, Wikipedia
prose, generator sites, commercial/unknown-license lists and dumps are excluded
from this zero-attribution v1. Any actual imported material requires provenance
in THIRD_PARTY.md; research-only references belong in docs/REFERENCES.md.

Deferred: whole-game localization, fonts/language menu, NPC/village/faction/save
integration, final cultures/lore, external name databases, linguistic quality,
registry, morphology, IPA and real-world transliteration standards.
