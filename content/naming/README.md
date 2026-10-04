# Naming prototype content

All 24 phonetic components, 14 semantic tokens and six templates were authored
for M035 as original synthetic test data. No outside name rows, lists, dumps,
API results or research datasets were consulted/imported. No final lore claim.

`catalog.tres` owns tokens and ordered membership; `cultures/` chooses grammars;
`templates/` owns per-slot pools and per-locale literal/placeholder patterns.
Edit native Resources in Inspector or text editor; restart the process afterward.
Every required locale must have every token form and template pattern. Add a
locale to `required_locales`, author its forms/patterns, and optionally list it
in `capitalize_phonetic_locales`; no renderer rewrite is needed.

See `docs/specs/procedural_naming.md` for contracts and stable seed paths.
