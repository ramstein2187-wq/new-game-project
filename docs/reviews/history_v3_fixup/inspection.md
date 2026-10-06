# Canonical/readable sample inspection — M039

2026-10-06. Reviewed the chronology, actor/parent/donor graph, current projection,
population ledger, relation evidence and site uses for all sixteen shipping samples and
three synthetic fixtures. Full readable outputs are saved in `samples.md` and
`fixture_samples.md`; matching snapshots are JSON. This is canonical/debug-text inspection,
not a claim of GUI/play/package or literary acceptance.

| Shipping seed | Family / current / historical polities | Observed structure |
| --- | --- | --- |
| 1 | consolidation /4/11 | Three heirs; two merge, another splits, merged polity resplits, a branch ends, two descendants merge. Operation counts2→4→6→5→4; ordinary in-band stop. No reuse. |
| 2 | mosaic /4/11 | Independent enclave(-473), inherited office and resident organization. Join→reorganization→split→three-parent merge→resplit. Counts3→3→4→2→4. Final split could have ended4 or5; no exact target. |
| 3 | migration /5/9 | Two resident roots, three external arrivals, join, one retirement, reorganization and split. Political newcomers have no local parents; cohorts are population donors. Administrative ruin reused as settlement. |
| 4 | late /8/12 | One successor(-314) persists until-95, then nested splits and reorganization. Counts3→5→6→8→8; last operation changes institutions without adding count. No padding/reuse. |
| 5 | consolidation /4/13 | Four heirs merge to two, migration, retained consolidated parent splits, further consolidations, migration from retained parent. Counts2→3→6→5→3→4. Six meaningful operations, not cleanup extinction. Old records become ritual site. |
| 6 | late /5/9 | Two old heirs(-336/-335); recent retained split, two genuine political losses, subsequent descendant splits. Counts4→3→2→3→5; surviving shared offices have actual ancestry. No reuse. |
| 7 | mosaic /6/13 | Older parentless enclave plus heir/resident branch; one extinction, retained split, two reorganizations and divergent descendants. Two-parent reorganization breaks office continuity. Settlement uses terminal site. |
| 8 | migration /6/8 | Two arrivals plus settlement migration and retained split, source polity ends. Current donor/cohort links remain distinct. Pressure site is compatible residential settlement, not mandatory for other histories. |
| 9 | no heir /7/18 | Two failed institutional heirs retire before later resident roots. Reorganizations and nested splits produce current graph; none retain old office continuity. Multiple extinct branches, no reuse. |
| 10 | mosaic /5/10 | Arrival joins old residents, successive institutional reorganizations, split, newcomer and another reorganization. Retired f_00→f_03→f_04 contributes population to f_05/f_06. Terminal site settlement. |
| 11 | migration /8/10 | Three resident roots, three newcomer arrivals, join, retained three-child split and real retirement. Counts4→4→5→8→7→8. Newcomers have cohort source IDs and formation events; no trailing padding or reuse. |
| 12 | enclave /8/15 | f_00(-496) predates other roots(-313..-310) and remains outside subsequent political transformations/current relations. Other branches reorganize, consolidate, split and accept newcomers. Compatible pressure-site settlement. |
| 13 | consolidation /6/14 | Five heirs, partial-donor merger and resplit, another retained split/loss. Primary bounded Core quarantine plus independent rare orbital bombardment; no invented activation/target motive, no reuse. |
| 14 | migration /7/8 | Three local roots and three independent newcomers; a join changes population without new political parent, migration creates another polity. No extinction required; scavenging at administrative ruin. |
| 17 | polycentric /8/15 | Four institutional roots, separate descendant branches, actual cousin consolidation, another split and one extinct branch. Multiple old lineages persist; no reused site. |
| 19 | late /6/13 | Two old successors, recent nested splits, three-parent consolidation then another consolidation and descendant split. Counts5→7→5→4→6. Optional Core slope event remains a bounded unexplained legacy, not social Observer content. |

Synthetic catalog examples are explicitly software fixtures, never shipping Canon:

- Seed2: `fixture_hybrid` is one `[human_derived,innerworld]` stratum, preserved through
  split and merger. A human community's join adds that separate authored hybrid stratum
  alongside its human baseline; it does not manufacture a hybrid by co-residence.
- Seed3: f_03 starts human-only, then an `innerworld` cohort joins as a **separate minor
  stratum**. Historical last profile retains that join, while founding profile stays human.
  Both children select the human stratum. Retirement records actual successors and
  `untracked_template_ids=[fixture_innerworld]`; those residents are not declared dead.
- Seed10: `planetary` members join human residents as another stratum. Reorganizations
  inherit both; split sends Planetary to f_05 and Human-derived to f_06. An independently
  authored hybrid lineage continues through another branch. Unknown appears only from
  the explicitly authored fixture, never a shipping newcomer Origin draw.

The initial inspection found Dictionary.merge's default non-overwriting behavior retaining
founding profile in the historical last-profile field. Follow-up corrected overwrite and
added tests comparing every historical last profile with its final population event.
Partial absorption now explicitly records donor strata absent from all successors.

The requested ten inspection questions were assessed:

1. Four-faction results have5–6 meaningful operations in seeds1/2/5. Their ordinary merge,
   loss or split has actual participants, donors and ownership, with no after-loop cleanup.
2. Eight-faction seeds4/11/12/17 retain variable branches/newcomers; seed4 even ends with
   count-neutral reorganization. Every actor has an actual formation event/home/source.
3. Counts are activation/retirement results and independent in-band stop decisions. Lower
   band feasibility can restrict late growth; it never demands one preselected endpoint.
4. Multiple roots, late nested branches, migration layers, extinction of office continuity
   and older isolated enclave are different political histories, not renamed A/B/C.
5. Mixed single-Origin co-residence and one multi-Origin stratum serialize/render distinctly.
   Co-residence involving an already authored hybrid is also readable as separate strata.
6. Partial-donor mergers and cohort joins display political parents separately from donors.
7. All shipping profiles are the human baseline. Nonhuman examples are labeled synthetic.
8. Political extinction records absorption/untracked strata and avoids species-death claims.
9. Seed1's h_relation_0 records f_02↔f_09 delta-15 but present score+28. Event Claims still
   say the dispute reduced trust; present Claims describe current cooperation. Duplicate
   evidence is suppressed/rejected.
10. Samples reuse different records/terminal/pressure sites or none. Chemical, ordnance and
    restricted hazards remain unused; no count logic drives reuse decisions.

Known limits: family anchors and six-event prelude remain authored constraints, relation
pairs are abstract encounters, and lower-band feasibility can constrain the last few
operations. This is bounded plausible composition, not a demographic/spatial simulation.
