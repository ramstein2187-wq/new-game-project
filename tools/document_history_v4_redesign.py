"""Update current branch-local contracts; frozen milestone/review sources stay."""
import json
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
if '## Current v4 revision2 — independent Projects and Scars' in (ROOT/'docs/specs/history_generator.md').read_text(encoding='utf-8-sig'):
    print('Revision2 documentation already applied; use ordinary edits for subsequent changes.')
    raise SystemExit(0)
c=json.loads((ROOT/'content/history/history_v4.json').read_text())
def edit(path,func):
    p=ROOT/path
    p.write_text(func(p.read_text(encoding='utf-8-sig')),encoding='utf-8')
projects='\n'.join('- `'+p['id']+'` — '+p['display_name'] for p in c['projects'])
scars='\n'.join('- `'+s['id']+'` — '+s['display_name'] for s in c['scars'])
contract=f'''

## Current v4 revision2 — independent Projects and Scars

Revision `history-v4-authored-2` replaces the initial nine-project v4 catalog.
Task branch `codex/history-projects-scars-redesign`; base
`9f04f780c79b622e70532a926aefbc8477147817`; main remains unmerged.
Historical revision1 reports and its author catalog under `content/history/compatibility/`
are retained as historical evidence, never selected by the current generator.

### Eight Projects

{projects}

`success` means bounded technical success. Ark unresolved departure is not success;
Deep return means limited survey/engineering and partial survivor return, with an
unresolved boundary. Stable orbital/Innerworld civilization, confirmed escape or
Outerworld colony, Observer equivalence, machine personhood and metaphysical
continuity are not authored outcomes. Future authored data is checked against
these limits in addition to checking generated histories.

Genome Archive preserves actual biological samples and records; it creates no
species or lineage. Cortical Array links actual human brains and parallel biological
computation. Meridian records surveys, reference frames, maps and discrepancies;
discrepancy does not prove supernatural causation. Second Mind records constructed,
autonomous, learning/self-repairing human-built machines, without proving consciousness,
descendant identity or full machine civilization. Adaptive Simplification Program
is the contemporary official name; The Great Degeneration is a later historical
evaluation. Its consent/biological/developmental observations stay human variation.

### Fifteen independent Scars

{scars}

Every Scar has its own actual population/site registration, causal observation
chain and persistent population/site/institution aftermath. None requires a Project
ID. Project outcomes may explicitly reuse a Scar chain and supply project_id; that
is a historical association, not a universal prerequisite. Eleven Scars have multiple
authored causal backgrounds. Consent/coercion/targeted killing remain human-policy
histories; Silent Depopulation remains unknown rather than inventing an explanation.

Imposed Diminution is shipping-active human-on-human atrocity. Require actual human
target and responsible authority, explicit biological cognitive-reduction policy,
intervention, coercive enforcement and measured generational effect. Education,
literacy/cultural/technology loss or a suggestive contact cannot substitute for that
chain. Enforcement-to-stabilization spans at least54 years; chosen-program consent
to measurement spans at least48. No contact-population gate is needed for baseline
human victims; unrelated M042 contacts/lineage/personhood rights remain closed.

Orbital Fall requires tracked artificial orbital objects, repeated descent/reentry
and matched multiple impacts. Surface meteors, unrelated craters, building collapse
or mere orbital observation cannot supply those prerequisites. Falling-object
maker/operator/common origin and intent remain unknown unless the specific physical
evidence identifies them. Failed Exodus concerns human attempts upward; Orbital Fall
concerns objects descending. They may coexist independently.

### Generation and validation

Project and Scar choices use non-uniform authored weights plus evidenced regional
context, independently seeded. Planning observations precede Project authorization.
Scar actors/dates fit actual polity lifetimes and the required multi-decade chain;
Scars can occur in earlier or later history. Previously established record sources
are actor-scoped and chronological; no later capability enables an earlier pressure.
Policy/selection types match actual Project goals. Variant lists are sorted by stable
ID; stage order remains causal. Discovery/name namespaces retain isolation.

Budgets remain0–2 Projects and at most2 major Scars. Main political/population/social
events remain the conservative v4 scaffold; exact v2/v3 and all pre-existing fixtures
are unchanged. Revision1→2 is a deterministic regeneration boundary, not an exact
v4 save migration: same revision2 seed replays exactly, but old v4 seeds can differ.
Only true renames map (`genome_ark`→`genome_archive_project`,
`machine_insurrection`→`autonomous_systems_crisis`); retired concepts are never
silently relabeled as different ones. New event/present fields contain no retired IDs.

Objective effects and history_record replay remain authority. Site states are last
documented conditions. Recorded regional archives do not establish personal loss or
biological descent; Culture/Claims interpret evidence without adding a cause, Origin,
species or consciousness. Record Severance supplies conflicting identity records,
not neural memory-copying capability; only actual cortical measurements supply that.
No quest/economy/facility or machine-ecosystem gameplay is added.

See [follow-up milestone](../milestones/M043_history_projects_scars_redesign.md),
[delivery and Notion Sync Summary](../reviews/history_v4_redesign/delivery.md),
[statistics](../reviews/history_v4_redesign/statistics.json),
and [continuation log](../reviews/history_v4_redesign/WORK_LOG.md).
'''
edit('docs/specs/history_generator.md',lambda t:t.replace('history-v4-authored-1','history-v4-authored-2',1).replace('codex/history-generator-v4','codex/history-projects-scars-redesign',1).replace('## M043 — current default v4 / architecture2','## M043 initial revision1 — historical v4 / architecture2').replace('World budgets are0/1/2 Projects','Initial-revision1 world budgets were0/1/2 Projects')+contract)
edit('docs/lore/history_generation_contract.md',lambda t:t.replace('shutdown trigger, unexplained depopulation','unexplained depopulation').replace('biological\nshutdown trigger, unexplained depopulation','unexplained depopulation').replace('Imposed cognitive regression requires both an explicitly regression-authorized\nhistorical contact and an approved social population template. Distinct-lineage\npersecution additionally requires actual recorded lineage context; an open taxonomy\nor a suggestive lifestyle is insufficient. Complete machine factions remain gated.','Current imposed cognitive regression is a baseline-human-on-human policy history;\nactual target, responsible authority, biological intervention and generational\neffects are mandatory. A mere contact, education loss or Preservator correlation\nis insufficient. Distinct-lineage/personhood contact content remains separately\nauthorized; complete machine civilization remains unconfirmed.')+'''

## Revision2 boundary and Scar independence

Humans can build great things but cannot conquer this world's boundaries. Technical
success is bounded; no stable orbital civilization, confirmed Outerworld colony,
complete Deep conquest or solved machine/continuity metaphysics. Eight current
Projects and fifteen current Scars are defined in the current generation spec.
Scar chains stand without Projects and leave enduring material/population/record
traces. Known policy/physical observations do not resolve unknown intention.
Imposed Diminution is a shipping human atrocity with actual multigenerational
biological evidence, not a taxonomy-derived semi-sapient population. Great
Degeneration and Great Alteration remain human variation and later historical
language. Autonomous Systems Crisis describes behavior/damage, not political intent.
Orbital Fall is tracked descent plus multiple impacts; it is distinct from exodus.
''')
edit('docs/lore/world_canon_v0_1.md',lambda t:t+'''

## Civilizational boundaries — current revision2

Humans can successfully build great things, but they cannot successfully conquer
the boundaries of this world. Orbital/Outerworld and Deep/Innerworld remain dangerous
and incompletely understood. Limited staging sites, returning survivors, useful
survey/engineering, persistent biological computation and autonomous machinery are
possible; stable orbital/Deep civilization and proven successful escape are not.

Contemporary Adaptive Simplification Program and later The Great Degeneration are
different names for a consenting generation-scale human-variation history. Imposed
Diminution requires another actual human cohort, responsible human authorities,
coercive biological policy/intervention and persistent measured generational change.
Neither creates a species, Origin or lineage. Genome Archive preserves information
and samples; Cortical Array connects human brains; Second Mind imitates observed
machine behavior without becoming canonically equivalent to Observer intelligence.
Meridian maps and reference-frame discrepancies do not prove supernatural causes.

Scars are long-term historical consequences independent of Projects. Habitability,
regional identity/ownership archives and orbital impact belts can be lost through
distinct evidenced histories. Preserve unknown maker/operator/purpose/personhood
where evidence stops. New population rights or a full machine civilization are not
inferred from those observations. Live gameplay/quests remain a later system.
''')
edit('docs/specs/social_historical_incidents.md',lambda t:t.replace('Imposed regression needs explicit regression authorization plus an approved social\ntemplate. Existing M042 approved-contact flags alone do not open it. Shipping has\nno such content.','Revision2 imposed regression uses an actual registered baseline-human target,\nresponsible authority, explicit biological policy/intervention and measured\ngenerational change. It is shipping-active. M042 contact/lineage permissions remain\nunchanged and do not replace this causal chain.'))
edit('docs/specs/faction_culture.md',lambda t:t+'''

## Current history revision2 evidence

Current v4 hooks follow Genome Archive, Autonomous Systems Crisis, Habitable Zone
Loss and Record Severance. Existing Doctrine breadth/intensity/eligibility remains.
Recorded identity/citizenship/property conflicts do not grant neural memory-copying
capability. Region-wide Scar exposure is regional record access, not personal bodily
loss or genetic descent. Imposed Diminution is now actual human-on-human history,
while unapproved lineage/contact/personhood Doctrine gates remain distinct.
Claims can call autonomous damage a rebellion as belief; objective vocabulary
records observed autonomous behavior without assuming political intent.
''')
edit('docs/wiki/history_generator.md',lambda t:t.replace('9종 장기 Project','8종 장기 Project').replace('[세계 단위 노출 통계](../reviews/history_v4/statistics.json)','[최신 세계 단위 노출 통계](../reviews/history_v4_redesign/statistics.json)')+'''

## 현재 v4 revision2: 독립적인 프로젝트와 상흔

Ark, Deep Descent, Far-Sky Array, Genome Archive, Cortical Array, Meridian,
Second Mind, Adaptive Simplification의8종 사업을 생성한다. 성공은 제한된 기술
목표 달성이다. 안정적인 궤도·심부 문명이나 확인된 행성 탈출을 뜻하지 않는다.
15종 상흔은 자체 인구·정책·물리적 증거·장기 흔적을 갖고 사업 없이도 발생한다.
강제 인지 축소(Imposed Diminution)는 인간 대상·책임 주체·생물학적 개입·세대
측정이 있는 실제 역사다. 궤도낙하는 실제 궤도 물체·재진입·다중 충돌을 요구한다.
기계 의식·지도 불일치의 초자연적 설명·미지의 책임 주체를 임의 확정하지 않는다.
초기 v4 seed 출력과 달라질 수 있는 명시적 revision 경계이며 v2/v3는 그대로다.

[현재 계약과 인계](../milestones/M043_history_projects_scars_redesign.md).
''')
edit('docs/wiki/faction_culture.md',lambda t:t+'''

## 문명 상흔 재설계 후의 문화 근거

현재 v4는15종 독립 상흔과8종 장기 사업의 실제 기록을 사용한다. 기록 단절은
신분·소유권의 모순 근거이며 기억 복제 증거가 아니다. 강제 인지 축소는 생물학적
개입과 여러 세대의 변화가 입증된 인간 집단 간 사건이다. 지역 상흔을 각 faction의
개인적 피해나 생물학적 계승으로 읽지 않는다. 기존 Doctrine와 신앙·해석 축을
유지하며 기계 반란·인격·의식 같은 평가는 객관적 원인을 추가하지 않는 Claim이다.
''')
milestone='''# M043 follow-up — Projects / Scars redesign

Status: implementation / final validation in progress on codex/history-projects-scars-redesign.
Exact base:9f04f780c79b622e70532a926aefbc8477147817; isolated worktree
C:/GameDev/history-projects-scars-redesign; main not merged.

Eight bounded-success Projects and fifteen independent persistent Scars replace
the initial v4 catalog. Each Scar is enabled by its actual target/institution,
physical observations and causal chain; all occur without Projects. Human-on-human
Imposed Diminution is shipping-active and requires biological generational evidence.
Orbital Fall requires actual orbital objects/reentry/impacts; unknown intent remains.
No invented species/Origin/lineage, stable orbital/Deep civilization or solved
machine/continuity metaphysics. Historical v2/v3 and pre-existing fixtures stay frozen.

See [request](../reviews/history_v4_redesign/request.md),
[continuation](../reviews/history_v4_redesign/WORK_LOG.md),
[delivery](../reviews/history_v4_redesign/delivery.md),
[statistics](../reviews/history_v4_redesign/statistics.json),
[qualitative review](../reviews/history_v4_redesign/qualitative_review.md).
Live Notion is not edited. Independent human lore/language approval, GUI/play,
exported package and balance review remain distinct from automated verification.
'''
(ROOT/'docs/milestones/M043_history_projects_scars_redesign.md').write_text(milestone,encoding='utf-8')
edit('docs/ROADMAP.md',lambda t:t.replace('| Civilizational history |','| Civilizational history redesign | Eight bounded-success Projects, fifteen independent Scars and shipping human-on-human diminution | In progress on isolated task branch; not merged main | [follow-up](milestones/M043_history_projects_scars_redesign.md), codex/history-projects-scars-redesign; base9f04f78. |\n| Civilizational history |',1))
edit('docs/MILESTONES.md',lambda t:t.replace('## Current State','## Current State\n\n- M043 follow-up: **In progress on isolated task branch; main not merged** codex/history-projects-scars-redesign;8 Projects/15 independent Scars; [contract](milestones/M043_history_projects_scars_redesign.md).',1))
edit('tools/render_doc_diagrams.py',lambda t:t.replace('Projects: authorization / decades of work / use / outcome; optional Scars','Context-weighted Projects: authority / decades of work / bounded use').replace('Compatible pressure / response / collapse; bounded discovery / mysteries','Independent Scars: actual population / causal chain / persistent aftermath'))
print('Updated current lore/spec/wiki/milestone/roadmap/diagram sources.')
