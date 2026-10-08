# M041 — Faction Society Traits & Doctrines v1

2026-10-06. Complete on `codex/faction-culture-doctrines-v1`; exact base
`ae03d6dd9e0f93b1d7b67cd88a640bf1816a8e2b`. No main merge.

## Scope

20 Society Traits and33 Doctrines live in an authored JSON catalog. Pure queries
derive real faction/history/M040 evidence; generic all/any/preferences/forbids,
weighted selection and conditional conflicts select normally2–4 traits and0–2
Doctrines. `custom/doctrine/orthodoxy` intensity retains reinforcement provenance;
orthodoxy requires3relevant tags/2distinct objective events before a rarity draw.

Culture Profiles expose unchanged M040 identity, selected rows/intensities,
values/taboos/desires/fears/tensions and source/selection diagnostics.
`SocietyActorInteraction` retains positive/negative/mixed reasons and qualitative
standing with role/dialogue/event/access hooks; no real Actor Trait system or
reputation number. `CultureGoalQuery` exposes prospective authored desire
candidates without target facts or any simulation.

No objective mutation or persistence, no new history/Canon/species content.
Generation3/architecture2, legacy generation2/architecture1, Claim wording and
upstream SeedDeriver namespaces remain unchanged. Future-content14Doctrines and
2traits remain dormant; synthetic fixtures never enter shipping Canon.

## Validation / delivery

- Focused culture suite:54,081 assertions PASS, including exact-base v2/v3/M040
  hashes, naming/locale/Claim isolation, dormant gates and Actor/goal contracts.
- Full `bash tools/check_godot.sh`:36scripts, editor import, main startup and
  official dataset check PASS. Offline18wiki/16spec metadata checks PASS.
- Final1000shipping histories/6246factions: all safety counters0. Trait counts
  2/3/4=2074/2143/2029; Doctrine counts0/1/2=1270/4112/864.
  Custom5290/doctrine536/orthodoxy14; orthodoxy0.239726% of selected Doctrines.
- 3647trait/Doctrine/intensity combinations;6233profiles including M040 axes.
  Repeated combination rate41.6106%; identity-inclusive0.2081%.
- Inspected26distinct-history factions plus one synthetic dormant/extreme case;
  six requested review questions answered per case. Three zero-Doctrine cases,
  all4art norms, philosophy/shelter/scars and unusual interpretation combinations.
  Review removed clan→genetic_stability inference and tightened archive orthodoxy
  to actual ritual-site reuse.
- Explicit intended-file staging/commit/push; original12EverRogue sidecars and
  main hash preservation audited. Exact delivery SHA and remote verification are
  recorded in the final chat/local receipt, avoiding a self-referential commit ID.

[Delivery review and inventories](../reviews/2026-10-06-faction-culture-v1.md),
[statistics](../reviews/faction_culture_v1/statistics.json),
[samples](../reviews/faction_culture_v1/samples.md),
[editorial review](../reviews/faction_culture_v1/qualitative_review.md),
[spec](../specs/faction_culture.md), [wiki](../wiki/faction_culture.md).

## Limits / next boundary

Finite prototype catalog and qualitative rules. No UI/player-knowledge policy,
real Actor Trait catalog, actual role/access enforcement, faction AI, economy,
war/research/biotech/migration or post-start evolution/save migration. GUI/play,
package/language/balance/live Notion acceptance remains separate.
Next consume semantic reasons through knowledge-filtered role/dialogue/access
policy; later simulation must independently validate actual targets/capabilities.

## Continuation

See [work log](../reviews/faction_culture_v1/WORK_LOG.md).
