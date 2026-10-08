# M045 Phase A readable histories

First five seeds fixed; remaining seeds randomly drawn once and recorded for reproduction.

## Seed 1

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 39 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 20 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 23 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 38 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 36 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 43 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 2 · event_0000 · **migration** · actors faction_1; targets population_1_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (38 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_3.
- Year 6 · event_0001 · **faction_split** · actors faction_1; targets population_1_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Create faction_3 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (38 people, source source_1 unchanged): faction_1/site_3 -> faction_3/site_3.
  Move population_1_1 (36 people, source source_1 unchanged): faction_1/site_1 -> faction_2/site_1.
  Move population_1_2 (43 people, source source_1 unchanged): faction_1/site_1 -> faction_3/site_1.
  Set site site_1 owner to none (owner before this event: faction_1).
  Set site site_1 owner to faction_2 (owner before this event: faction_1).
  Artifact artifact_1: held/faction_1/site_1 -> held/faction_2/site_1 (Origin stays unknown).
  Retire faction_1 after distributing all population.
- Year 7 · event_0002 · **migration** · actors faction_0; targets population_0_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (20 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 12 · event_0003 · **relationship_change** · actors faction_2; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 0 -> -1.
  Set site site_1 owner to faction_3 (owner before this event: faction_2).
- Year 17 · event_0004 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_0/site_4 (Origin stays unknown).
- Year 18 · event_0005 · **site_reoccupation** · actors faction_3; targets site_3, population_1_0
  Explicit enabling causes: event_0001; evidence: population:population_1_0.
  Set site site_3 owner to faction_3 (owner before this event: none).
- Year 20 · event_0006 · **migration** · actors faction_2; targets population_1_1, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (36 people, source source_1 unchanged): faction_2/site_1 -> faction_2/site_2.
  Artifact artifact_1: held/faction_2/site_1 -> lost//site_1 (Origin stays unknown).
- Year 21 · event_0007 · **site_reoccupation** · actors faction_0; targets site_4, population_0_1
  Explicit enabling causes: event_0002; evidence: population:population_0_1.
  Set site site_4 owner to faction_0 (owner before this event: none).
- Year 25 · event_0008 · **migration** · actors faction_0; targets population_0_0, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_1.
- Year 28 · event_0009 · **site_incident** · actors faction_3; targets site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_3: damaged -> ruined; accessible false.
  Set site site_3 owner to none (owner before this event: faction_3).
- Year 30 · event_0010 · **migration** · actors faction_0; targets population_0_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (20 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_1.
  Artifact artifact_0: held/faction_0/site_4 -> lost//site_4 (Origin stays unknown).
- Year 32 · event_0011 · **relationship_change** · actors faction_0; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_3: 0 -> 1.
- Year 37 · event_0012 · **site_reoccupation** · actors faction_2; targets site_2, population_1_1
  Explicit enabling causes: event_0006; evidence: population:population_1_1.
  Set site site_2 owner to faction_2 (owner before this event: none).
- Year 39 · event_0013 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_4 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_2 (23 people, source source_0 unchanged): faction_0/site_0 -> faction_4/site_0.
- Year 43 · event_0014 · **artifact_transfer_loss** · actors faction_3; targets artifact_1, site_1
  Explicit enabling causes: event_0006; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_3/site_1 (Origin stays unknown).
- Year 48 · event_0015 · **migration** · actors faction_0; targets population_0_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (20 people, source source_0 unchanged): faction_0/site_1 -> faction_0/site_4.
- Year 51 · event_0016 · **faction_split** · actors faction_0; targets population_0_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_5 from political parent faction_0.
  Create faction_6 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_1 -> faction_6/site_1.
  Move population_0_1 (20 people, source source_0 unchanged): faction_0/site_4 -> faction_5/site_4.
  Set site site_0 owner to none (owner before this event: faction_0).
  Set site site_4 owner to none (owner before this event: faction_0).
  Set site site_4 owner to faction_5 (owner before this event: faction_0).
  Retire faction_0 after distributing all population.
- Year 55 · event_0017 · **site_reoccupation** · actors faction_4; targets site_0, population_0_2
  Explicit enabling causes: event_0013, event_0016; evidence: population:population_0_2, site_owner:site_0.
  Set site site_0 owner to faction_4 (owner before this event: none).
- Year 56 · event_0018 · **faction_split** · actors faction_3; targets population_1_2
  Explicit enabling causes: event_0001; evidence: faction:faction_3.
  Create faction_7 from political parent faction_3.
  Spend one institutional split capacity of faction_3.
  Move population_1_2 (43 people, source source_1 unchanged): faction_3/site_1 -> faction_7/site_1.
  Artifact artifact_1: held/faction_3/site_1 -> held/faction_7/site_1 (Origin stays unknown).
- Year 59 · event_0019 · **migration** · actors faction_4; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (23 people, source source_0 unchanged): faction_4/site_0 -> faction_4/site_1.
- Year 60 · event_0020 · **relationship_change** · actors faction_6; targets faction_7, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_6/faction_7: 0 -> 1.
- Year 62 · event_0021 · **artifact_transfer_loss** · actors faction_5; targets artifact_0, site_4
  Explicit enabling causes: event_0010; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_4 -> held/faction_5/site_4 (Origin stays unknown).
- Year 64 · event_0022 · **migration** · actors faction_3; targets population_1_0, site_1
  Explicit enabling causes: event_0009; evidence: site_condition:site_3.
  Move population_1_0 (38 people, source source_1 unchanged): faction_3/site_3 -> faction_3/site_1.
- Year 67 · event_0023 · **site_incident** · actors faction_2; targets site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_2: damaged -> ruined; accessible false.
  Set site site_2 owner to none (owner before this event: faction_2).
- Year 70 · event_0024 · **migration** · actors faction_6; targets population_0_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_6/site_1 -> faction_6/site_0.
- Year 74 · event_0025 · **relationship_change** · actors faction_3; targets faction_7, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_7: 0 -> -1.
  Set site site_1 owner to faction_7 (owner before this event: faction_3).
- Year 78 · event_0026 · **migration** · actors faction_4; targets population_0_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (23 people, source source_0 unchanged): faction_4/site_1 -> faction_4/site_0.
- Year 80 · event_0027 · **relationship_change** · actors faction_4; targets faction_6, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_4/faction_6: 0 -> -1.
  Set site site_0 owner to faction_6 (owner before this event: faction_4).
- Year 82 · event_0028 · **artifact_transfer_loss** · actors faction_7; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_7/site_1 -> lost//site_1 (Origin stays unknown).
- Year 83 · event_0029 · **migration** · actors faction_5; targets population_0_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (20 people, source source_0 unchanged): faction_5/site_4 -> faction_5/site_0.
  Artifact artifact_0: held/faction_5/site_4 -> lost//site_4 (Origin stays unknown).
- Year 85 · event_0030 · **relationship_change** · actors faction_3; targets faction_7, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_7: -1 -> 1.
- Year 86 · event_0031 · **migration** · actors faction_4; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (23 people, source source_0 unchanged): faction_4/site_0 -> faction_4/site_1.
- Year 91 · event_0032 · **relationship_change** · actors faction_3; targets faction_7, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_7: 1 -> 0.
- Year 96 · event_0033 · **migration** · actors faction_3; targets population_1_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (38 people, source source_1 unchanged): faction_3/site_1 -> faction_3/site_0.
- Year 98 · event_0034 · **artifact_transfer_loss** · actors faction_7; targets artifact_1, site_1
  Explicit enabling causes: event_0028; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_7/site_1 (Origin stays unknown).
- Year 103 · event_0035 · **relationship_change** · actors faction_3; targets faction_6, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_6: 0 -> 1.

### Final state

Year 103. Active factions: faction_2, faction_3, faction_4, faction_5, faction_6, faction_7.

- faction_0: retired; political parent initial local community; institutional capacity 0.
- faction_1: retired; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: active; political parent faction_1; institutional capacity 0.
- faction_4: active; political parent faction_0; institutional capacity 1.
- faction_5: active; political parent faction_0; institutional capacity 0.
- faction_6: active; political parent faction_0; institutional capacity 0.
- faction_7: active; political parent faction_3; institutional capacity 0.
- population_0_0: 39 people; source source_0 (human_derived); member faction_6; at site_0.
- population_0_1: 20 people; source source_0 (human_derived); member faction_5; at site_0.
- population_0_2: 23 people; source source_0 (human_derived); member faction_4; at site_1.
- population_1_0: 38 people; source source_1 (human_derived); member faction_3; at site_0.
- population_1_1: 36 people; source source_1 (human_derived); member faction_2; at site_2.
- population_1_2: 43 people; source source_1 (human_derived); member faction_7; at site_1.
- site_0: owner faction_6; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_7; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner faction_5; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_4; origin unknown.
- artifact_1: held; owner faction_7; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_3":1,"faction_2|faction_3":-1,"faction_3|faction_6":1,"faction_3|faction_7":0,"faction_4|faction_6":-1,"faction_6|faction_7":1}.

Stop: event_limit.

## Seed 2

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 23 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 42 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 45 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 22 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 41 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 23 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 5 · event_0000 · **migration** · actors faction_1; targets population_1_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (41 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 10 · event_0001 · **relationship_change** · actors faction_0; targets faction_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_1: 0 -> -1.
  Set site site_0 owner to faction_1 (owner before this event: faction_0).
- Year 15 · event_0002 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 17 · event_0003 · **migration** · actors faction_1; targets population_1_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (22 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_2.
- Year 21 · event_0004 · **faction_split** · actors faction_1; targets population_1_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Create faction_3 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (22 people, source source_1 unchanged): faction_1/site_2 -> faction_2/site_2.
  Move population_1_1 (41 people, source source_1 unchanged): faction_1/site_0 -> faction_3/site_0.
  Move population_1_2 (23 people, source source_1 unchanged): faction_1/site_1 -> faction_3/site_1.
  Set site site_0 owner to none (owner before this event: faction_1).
  Set site site_0 owner to faction_3 (owner before this event: faction_1).
  Set site site_1 owner to none (owner before this event: faction_1).
  Set site site_1 owner to faction_3 (owner before this event: faction_1).
  Artifact artifact_1: held/faction_1/site_1 -> held/faction_3/site_1 (Origin stays unknown).
  Retire faction_1 after distributing all population.
- Year 26 · event_0005 · **migration** · actors faction_0; targets population_0_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (45 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_3.
- Year 29 · event_0006 · **site_reoccupation** · actors faction_2; targets site_2, population_1_0
  Explicit enabling causes: event_0004; evidence: population:population_1_0.
  Set site site_2 owner to faction_2 (owner before this event: none).
- Year 34 · event_0007 · **site_incident** · actors faction_3; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_3).
- Year 39 · event_0008 · **migration** · actors faction_3; targets population_1_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (41 people, source source_1 unchanged): faction_3/site_0 -> faction_3/site_1.
- Year 40 · event_0009 · **site_reoccupation** · actors faction_0; targets site_0, population_0_0
  Explicit enabling causes: event_0007; evidence: site_owner:site_0.
  Set site site_0 owner to faction_0 (owner before this event: none).
- Year 42 · event_0010 · **artifact_transfer_loss** · actors faction_0; targets artifact_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_3/site_1 -> held/faction_0/site_0 (Origin stays unknown).
- Year 44 · event_0011 · **site_reoccupation** · actors faction_0; targets site_3, population_0_2
  Explicit enabling causes: event_0005; evidence: population:population_0_2.
  Set site site_3 owner to faction_0 (owner before this event: none).
- Year 48 · event_0012 · **migration** · actors faction_3; targets population_1_1, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (41 people, source source_1 unchanged): faction_3/site_1 -> faction_3/site_2.
- Year 52 · event_0013 · **artifact_transfer_loss** · actors faction_0; targets artifact_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_0/site_0 -> held/faction_0/site_3 (Origin stays unknown).
- Year 56 · event_0014 · **migration** · actors faction_3; targets population_1_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (41 people, source source_1 unchanged): faction_3/site_2 -> faction_3/site_4.
- Year 60 · event_0015 · **site_incident** · actors faction_0; targets site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_3: damaged -> ruined; accessible false.
  Set site site_3 owner to none (owner before this event: faction_0).
  Artifact artifact_1: held/faction_0/site_3 -> lost//site_3 (Origin stays unknown).
- Year 63 · event_0016 · **site_reoccupation** · actors faction_3; targets site_4, population_1_1
  Explicit enabling causes: event_0014; evidence: population:population_1_1.
  Set site site_4 owner to faction_3 (owner before this event: none).
- Year 68 · event_0017 · **migration** · actors faction_0; targets population_0_2, site_1
  Explicit enabling causes: event_0015; evidence: site_condition:site_3.
  Move population_0_2 (45 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_1.
- Year 72 · event_0018 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: event_0002; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_0/site_0 (Origin stays unknown).
- Year 75 · event_0019 · **migration** · actors faction_0; targets population_0_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (42 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 79 · event_0020 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_0/site_4 (Origin stays unknown).
- Year 82 · event_0021 · **migration** · actors faction_3; targets population_1_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (23 people, source source_1 unchanged): faction_3/site_1 -> faction_3/site_2.
- Year 84 · event_0022 · **relationship_change** · actors faction_2; targets faction_3, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 0 -> -1.
  Set site site_2 owner to faction_3 (owner before this event: faction_2).
- Year 85 · event_0023 · **migration** · actors faction_0; targets population_0_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (45 people, source source_0 unchanged): faction_0/site_1 -> faction_0/site_2.
- Year 90 · event_0024 · **relationship_change** · actors faction_0; targets faction_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: 0 -> 1.
- Year 94 · event_0025 · **migration** · actors faction_3; targets population_1_1, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (41 people, source source_1 unchanged): faction_3/site_4 -> faction_3/site_2.
- Year 96 · event_0026 · **artifact_transfer_loss** · actors faction_2; targets artifact_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_4 -> held/faction_2/site_2 (Origin stays unknown).
- Year 101 · event_0027 · **migration** · actors faction_0; targets population_0_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (23 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 105 · event_0028 · **site_incident** · actors faction_3; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: intact -> damaged; accessible true.
  Set site site_1 owner to none (owner before this event: faction_3).
- Year 109 · event_0029 · **migration** · actors faction_0; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (45 people, source source_0 unchanged): faction_0/site_2 -> faction_0/site_1.
- Year 110 · event_0030 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_4 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_2 (45 people, source source_0 unchanged): faction_0/site_1 -> faction_4/site_1.
- Year 115 · event_0031 · **relationship_change** · actors faction_2; targets faction_3, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: -1 -> 1.
- Year 117 · event_0032 · **site_reoccupation** · actors faction_4; targets site_1, population_0_2
  Explicit enabling causes: event_0028, event_0030; evidence: population:population_0_2, site_owner:site_1.
  Set site site_1 owner to faction_4 (owner before this event: none).
- Year 118 · event_0033 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_2/site_2 -> held/faction_3/site_2 (Origin stays unknown).
- Year 120 · event_0034 · **migration** · actors faction_0; targets population_0_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (42 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_1.
- Year 124 · event_0035 · **site_incident** · actors faction_3; targets site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_2: damaged -> ruined; accessible false.
  Set site site_2 owner to none (owner before this event: faction_3).
  Artifact artifact_0: held/faction_3/site_2 -> lost//site_2 (Origin stays unknown).

### Final state

Year 124. Active factions: faction_0, faction_2, faction_3, faction_4.

- faction_0: active; political parent initial local community; institutional capacity 1.
- faction_1: retired; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: active; political parent faction_1; institutional capacity 1.
- faction_4: active; political parent faction_0; institutional capacity 1.
- population_0_0: 23 people; source source_0 (human_derived); member faction_0; at site_4.
- population_0_1: 42 people; source source_0 (human_derived); member faction_0; at site_1.
- population_0_2: 45 people; source source_0 (human_derived); member faction_4; at site_1.
- population_1_0: 22 people; source source_1 (human_derived); member faction_2; at site_2.
- population_1_1: 41 people; source source_1 (human_derived); member faction_3; at site_2.
- population_1_2: 23 people; source source_1 (human_derived); member faction_3; at site_2.
- site_0: owner faction_0; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_4; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner faction_3; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_2; origin unknown.
- artifact_1: lost; owner none; location site_3; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_1":-1,"faction_0|faction_2":1,"faction_2|faction_3":1}.

Stop: event_limit.

## Seed 42

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 23 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 29 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 29 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 35 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 36 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 40 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 2 · event_0000 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 3 · event_0001 · **migration** · actors faction_1; targets population_1_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (40 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_3.
- Year 8 · event_0002 · **site_reoccupation** · actors faction_1; targets site_3, population_1_2
  Explicit enabling causes: event_0001; evidence: population:population_1_2.
  Set site site_3 owner to faction_1 (owner before this event: none).
- Year 9 · event_0003 · **faction_split** · actors faction_1; targets population_1_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_1 (36 people, source source_1 unchanged): faction_1/site_1 -> faction_2/site_1.
- Year 13 · event_0004 · **artifact_transfer_loss** · actors faction_2; targets artifact_0, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_2/site_1 (Origin stays unknown).
- Year 14 · event_0005 · **migration** · actors faction_0; targets population_0_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (29 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_3.
- Year 17 · event_0006 · **relationship_change** · actors faction_0; targets faction_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_1: 0 -> -1.
  Set site site_3 owner to faction_0 (owner before this event: faction_1).
- Year 20 · event_0007 · **migration** · actors faction_0; targets population_0_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (23 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_2.
- Year 25 · event_0008 · **site_reoccupation** · actors faction_0; targets site_2, population_0_0
  Explicit enabling causes: event_0007; evidence: population:population_0_0.
  Set site site_2 owner to faction_0 (owner before this event: none).
- Year 29 · event_0009 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_2/site_1 -> held/faction_0/site_0 (Origin stays unknown).
- Year 30 · event_0010 · **relationship_change** · actors faction_1; targets faction_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> 1.
- Year 34 · event_0011 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_3 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_2 (29 people, source source_0 unchanged): faction_0/site_3 -> faction_3/site_3.
- Year 38 · event_0012 · **artifact_transfer_loss** · actors faction_2; targets artifact_1, site_1
  Explicit enabling causes: event_0000; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_2/site_1 (Origin stays unknown).
- Year 41 · event_0013 · **relationship_change** · actors faction_1; targets faction_3, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_3: 0 -> 1.
- Year 43 · event_0014 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_3/site_3 (Origin stays unknown).
- Year 47 · event_0015 · **faction_split** · actors faction_0; targets population_0_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_4 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_1 (29 people, source source_0 unchanged): faction_0/site_0 -> faction_4/site_0.
- Year 49 · event_0016 · **migration** · actors faction_0; targets population_0_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (23 people, source source_0 unchanged): faction_0/site_2 -> faction_0/site_3.
- Year 54 · event_0017 · **faction_split** · actors faction_1; targets population_1_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_5 from political parent faction_1.
  Create faction_6 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (35 people, source source_1 unchanged): faction_1/site_1 -> faction_5/site_1.
  Move population_1_2 (40 people, source source_1 unchanged): faction_1/site_3 -> faction_6/site_3.
  Set site site_1 owner to none (owner before this event: faction_1).
  Set site site_1 owner to faction_5 (owner before this event: faction_1).
  Retire faction_1 after distributing all population.
- Year 57 · event_0018 · **artifact_transfer_loss** · actors faction_2; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_2/site_1 -> lost//site_1 (Origin stays unknown).
- Year 58 · event_0019 · **migration** · actors faction_5; targets population_1_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (35 people, source source_1 unchanged): faction_5/site_1 -> faction_5/site_3.
- Year 60 · event_0020 · **relationship_change** · actors faction_0; targets faction_6, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_6: 0 -> 1.
- Year 61 · event_0021 · **site_incident** · actors faction_0; targets site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_3: damaged -> ruined; accessible false.
  Set site site_3 owner to none (owner before this event: faction_0).
  Artifact artifact_0: held/faction_3/site_3 -> lost//site_3 (Origin stays unknown).
- Year 63 · event_0022 · **relationship_change** · actors faction_3; targets faction_5, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_5: 0 -> -1.
- Year 64 · event_0023 · **artifact_transfer_loss** · actors faction_2; targets artifact_1, site_1
  Explicit enabling causes: event_0018; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_2/site_1 (Origin stays unknown).
- Year 68 · event_0024 · **migration** · actors faction_5; targets population_1_0, site_0
  Explicit enabling causes: event_0021; evidence: site_condition:site_3.
  Move population_1_0 (35 people, source source_1 unchanged): faction_5/site_3 -> faction_5/site_0.
- Year 70 · event_0025 · **artifact_transfer_loss** · actors faction_5; targets artifact_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_2/site_1 -> held/faction_5/site_0 (Origin stays unknown).
- Year 74 · event_0026 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
  Artifact artifact_1: held/faction_5/site_0 -> lost//site_0 (Origin stays unknown).
- Year 78 · event_0027 · **migration** · actors faction_0; targets population_0_0, site_4
  Explicit enabling causes: event_0021; evidence: site_condition:site_3.
  Move population_0_0 (23 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_4.
- Year 80 · event_0028 · **site_reoccupation** · actors faction_0; targets site_4, population_0_0
  Explicit enabling causes: event_0027; evidence: population:population_0_0.
  Set site site_4 owner to faction_0 (owner before this event: none).
- Year 82 · event_0029 · **artifact_transfer_loss** · actors faction_5; targets artifact_1, site_0
  Explicit enabling causes: event_0026; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_0 -> held/faction_5/site_0 (Origin stays unknown).
- Year 84 · event_0030 · **migration** · actors faction_5; targets population_1_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (35 people, source source_1 unchanged): faction_5/site_0 -> faction_5/site_2.
  Artifact artifact_1: held/faction_5/site_0 -> lost//site_0 (Origin stays unknown).
- Year 86 · event_0031 · **relationship_change** · actors faction_3; targets faction_6, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_6: 0 -> 1.
- Year 91 · event_0032 · **site_reoccupation** · actors faction_4; targets site_0, population_0_1
  Explicit enabling causes: event_0015, event_0026; evidence: population:population_0_1, site_owner:site_0.
  Set site site_0 owner to faction_4 (owner before this event: none).
- Year 95 · event_0033 · **migration** · actors faction_4; targets population_0_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (29 people, source source_0 unchanged): faction_4/site_0 -> faction_4/site_4.
- Year 97 · event_0034 · **relationship_change** · actors faction_0; targets faction_4, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_4: 0 -> -1.
  Set site site_4 owner to faction_4 (owner before this event: faction_0).
- Year 100 · event_0035 · **migration** · actors faction_0; targets population_0_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (23 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_2.

### Final state

Year 100. Active factions: faction_0, faction_2, faction_3, faction_4, faction_5, faction_6.

- faction_0: active; political parent initial local community; institutional capacity 0.
- faction_1: retired; political parent initial local community; institutional capacity 0.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: active; political parent faction_0; institutional capacity 1.
- faction_4: active; political parent faction_0; institutional capacity 0.
- faction_5: active; political parent faction_1; institutional capacity 0.
- faction_6: active; political parent faction_1; institutional capacity 0.
- population_0_0: 23 people; source source_0 (human_derived); member faction_0; at site_2.
- population_0_1: 29 people; source source_0 (human_derived); member faction_4; at site_4.
- population_0_2: 29 people; source source_0 (human_derived); member faction_3; at site_3.
- population_1_0: 35 people; source source_1 (human_derived); member faction_5; at site_2.
- population_1_1: 36 people; source source_1 (human_derived); member faction_2; at site_1.
- population_1_2: 40 people; source source_1 (human_derived); member faction_6; at site_3.
- site_0: owner faction_4; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_5; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner faction_0; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner faction_4; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_3; origin unknown.
- artifact_1: lost; owner none; location site_0; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_1":-1,"faction_0|faction_4":-1,"faction_0|faction_6":1,"faction_1|faction_2":1,"faction_1|faction_3":1,"faction_3|faction_5":-1,"faction_3|faction_6":1}.

Stop: event_limit.

## Seed 1001

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 39 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 38 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 21 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 31 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 27 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 36 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 3 · event_0000 · **migration** · actors faction_0; targets population_0_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 8 · event_0001 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 12 · event_0002 · **faction_split** · actors faction_1; targets population_1_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_2 (36 people, source source_1 unchanged): faction_1/site_1 -> faction_2/site_1.
- Year 13 · event_0003 · **site_reoccupation** · actors faction_0; targets site_4, population_0_0
  Explicit enabling causes: event_0000; evidence: population:population_0_0.
  Set site site_4 owner to faction_0 (owner before this event: none).
- Year 14 · event_0004 · **migration** · actors faction_0; targets population_0_2, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (21 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 15 · event_0005 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 20 · event_0006 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
- Year 25 · event_0007 · **migration** · actors faction_0; targets population_0_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_2.
- Year 30 · event_0008 · **site_reoccupation** · actors faction_0; targets site_2, population_0_0
  Explicit enabling causes: event_0007; evidence: population:population_0_0.
  Set site site_2 owner to faction_0 (owner before this event: none).
- Year 35 · event_0009 · **migration** · actors faction_0; targets population_0_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (38 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_3.
- Year 36 · event_0010 · **relationship_change** · actors faction_1; targets faction_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> -1.
  Set site site_1 owner to faction_2 (owner before this event: faction_1).
- Year 38 · event_0011 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: event_0001; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_1/site_1 (Origin stays unknown).
- Year 39 · event_0012 · **migration** · actors faction_0; targets population_0_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_2 -> faction_0/site_4.
- Year 44 · event_0013 · **site_reoccupation** · actors faction_0; targets site_3, population_0_1
  Explicit enabling causes: event_0009; evidence: population:population_0_1.
  Set site site_3 owner to faction_0 (owner before this event: none).
- Year 45 · event_0014 · **migration** · actors faction_0; targets population_0_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_3.
- Year 49 · event_0015 · **site_incident** · actors faction_0; targets site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_2: damaged -> ruined; accessible false.
  Set site site_2 owner to none (owner before this event: faction_0).
- Year 53 · event_0016 · **migration** · actors faction_0; targets population_0_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_0.
- Year 55 · event_0017 · **site_reoccupation** · actors faction_0; targets site_0, population_0_0
  Explicit enabling causes: event_0006, event_0016; evidence: population:population_0_0, site_owner:site_0.
  Set site site_0 owner to faction_0 (owner before this event: none).
- Year 59 · event_0018 · **relationship_change** · actors faction_1; targets faction_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: -1 -> 0.
- Year 63 · event_0019 · **migration** · actors faction_0; targets population_0_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (38 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_1.
- Year 68 · event_0020 · **relationship_change** · actors faction_1; targets faction_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> 1.
- Year 69 · event_0021 · **migration** · actors faction_1; targets population_1_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (31 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 70 · event_0022 · **faction_split** · actors faction_1; targets population_1_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_3 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_1 (27 people, source source_1 unchanged): faction_1/site_1 -> faction_3/site_1.
  Artifact artifact_1: held/faction_1/site_1 -> held/faction_3/site_1 (Origin stays unknown).
- Year 74 · event_0023 · **migration** · actors faction_1; targets population_1_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (31 people, source source_1 unchanged): faction_1/site_0 -> faction_1/site_3.
- Year 77 · event_0024 · **relationship_change** · actors faction_2; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 0 -> -1.
  Set site site_1 owner to faction_3 (owner before this event: faction_2).
- Year 80 · event_0025 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_3/site_1 -> held/faction_1/site_3 (Origin stays unknown).
- Year 84 · event_0026 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_4 from political parent faction_0.
  Create faction_5 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_0 (39 people, source source_0 unchanged): faction_0/site_0 -> faction_5/site_0.
  Move population_0_1 (38 people, source source_0 unchanged): faction_0/site_1 -> faction_5/site_1.
  Move population_0_2 (21 people, source source_0 unchanged): faction_0/site_4 -> faction_4/site_4.
  Set site site_0 owner to none (owner before this event: faction_0).
  Set site site_0 owner to faction_5 (owner before this event: faction_0).
  Set site site_3 owner to none (owner before this event: faction_0).
  Set site site_4 owner to none (owner before this event: faction_0).
  Set site site_4 owner to faction_4 (owner before this event: faction_0).
  Retire faction_0 after distributing all population.
- Year 87 · event_0027 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_3 -> lost//site_3 (Origin stays unknown).
- Year 91 · event_0028 · **site_reoccupation** · actors faction_1; targets site_3, population_1_0
  Explicit enabling causes: event_0023, event_0026; evidence: population:population_1_0, site_owner:site_3.
  Set site site_3 owner to faction_1 (owner before this event: none).
- Year 95 · event_0029 · **migration** · actors faction_4; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (21 people, source source_0 unchanged): faction_4/site_4 -> faction_4/site_1.
- Year 100 · event_0030 · **artifact_transfer_loss** · actors faction_5; targets artifact_0, site_0
  Explicit enabling causes: event_0005; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_5/site_0 (Origin stays unknown).
- Year 101 · event_0031 · **faction_split** · actors faction_5; targets population_0_0
  Explicit enabling causes: event_0026; evidence: faction:faction_5.
  Create faction_6 from political parent faction_5.
  Spend one institutional split capacity of faction_5.
  Move population_0_0 (39 people, source source_0 unchanged): faction_5/site_0 -> faction_6/site_0.
  Artifact artifact_0: held/faction_5/site_0 -> held/faction_6/site_0 (Origin stays unknown).
- Year 104 · event_0032 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_6/site_0 -> held/faction_1/site_3 (Origin stays unknown).
- Year 109 · event_0033 · **migration** · actors faction_2; targets population_1_2, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (36 people, source source_1 unchanged): faction_2/site_1 -> faction_2/site_4.
- Year 110 · event_0034 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_1/site_3 -> lost//site_3 (Origin stays unknown).
- Year 115 · event_0035 · **relationship_change** · actors faction_4; targets faction_5, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_4/faction_5: 0 -> -1.

### Final state

Year 115. Active factions: faction_1, faction_2, faction_3, faction_4, faction_5, faction_6.

- faction_0: retired; political parent initial local community; institutional capacity 1.
- faction_1: active; political parent initial local community; institutional capacity 0.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: active; political parent faction_1; institutional capacity 0.
- faction_4: active; political parent faction_0; institutional capacity 1.
- faction_5: active; political parent faction_0; institutional capacity 0.
- faction_6: active; political parent faction_5; institutional capacity 0.
- population_0_0: 39 people; source source_0 (human_derived); member faction_6; at site_0.
- population_0_1: 38 people; source source_0 (human_derived); member faction_5; at site_1.
- population_0_2: 21 people; source source_0 (human_derived); member faction_4; at site_1.
- population_1_0: 31 people; source source_1 (human_derived); member faction_1; at site_3.
- population_1_1: 27 people; source source_1 (human_derived); member faction_3; at site_1.
- population_1_2: 36 people; source source_1 (human_derived); member faction_2; at site_4.
- site_0: owner faction_5; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_3; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner faction_1; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner faction_4; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_3; origin unknown.
- artifact_1: lost; owner none; location site_3; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_1|faction_2":1,"faction_2|faction_3":-1,"faction_4|faction_5":-1}.

Stop: event_limit.

## Seed 10492

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 25 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 22 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 45 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 37 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 44 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 22 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 3 · event_0000 · **faction_split** · actors faction_0; targets population_0_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_0.
  Create faction_3 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_0 (25 people, source source_0 unchanged): faction_0/site_0 -> faction_2/site_0.
  Move population_0_1 (22 people, source source_0 unchanged): faction_0/site_0 -> faction_3/site_0.
  Move population_0_2 (45 people, source source_0 unchanged): faction_0/site_0 -> faction_3/site_0.
  Set site site_0 owner to none (owner before this event: faction_0).
  Set site site_0 owner to faction_2 (owner before this event: faction_0).
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_2/site_0 (Origin stays unknown).
  Retire faction_0 after distributing all population.
- Year 6 · event_0001 · **migration** · actors faction_3; targets population_0_2, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (45 people, source source_0 unchanged): faction_3/site_0 -> faction_3/site_4.
- Year 10 · event_0002 · **site_reoccupation** · actors faction_3; targets site_4, population_0_2
  Explicit enabling causes: event_0001; evidence: population:population_0_2.
  Set site site_4 owner to faction_3 (owner before this event: none).
- Year 12 · event_0003 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 17 · event_0004 · **site_incident** · actors faction_3; targets site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_4: damaged -> ruined; accessible false.
  Set site site_4 owner to none (owner before this event: faction_3).
- Year 18 · event_0005 · **migration** · actors faction_3; targets population_0_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (22 people, source source_0 unchanged): faction_3/site_0 -> faction_3/site_1.
- Year 20 · event_0006 · **relationship_change** · actors faction_1; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_3: 0 -> -1.
  Set site site_1 owner to faction_3 (owner before this event: faction_1).
- Year 22 · event_0007 · **artifact_transfer_loss** · actors faction_2; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_2/site_0 -> lost//site_0 (Origin stays unknown).
- Year 25 · event_0008 · **relationship_change** · actors faction_1; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_3: -1 -> 0.
- Year 30 · event_0009 · **migration** · actors faction_1; targets population_1_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (22 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 33 · event_0010 · **relationship_change** · actors faction_1; targets faction_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> 1.
- Year 36 · event_0011 · **migration** · actors faction_3; targets population_0_2, site_2
  Explicit enabling causes: event_0004; evidence: site_condition:site_4.
  Move population_0_2 (45 people, source source_0 unchanged): faction_3/site_4 -> faction_3/site_2.
- Year 41 · event_0012 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_0
  Explicit enabling causes: event_0007; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_1/site_0 (Origin stays unknown).
- Year 46 · event_0013 · **relationship_change** · actors faction_1; targets faction_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 1 -> -1.
  Set site site_0 owner to faction_1 (owner before this event: faction_2).
- Year 47 · event_0014 · **site_reoccupation** · actors faction_3; targets site_2, population_0_2
  Explicit enabling causes: event_0011; evidence: population:population_0_2.
  Set site site_2 owner to faction_3 (owner before this event: none).
- Year 50 · event_0015 · **migration** · actors faction_1; targets population_1_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (44 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 51 · event_0016 · **site_incident** · actors faction_3; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: intact -> damaged; accessible true.
  Set site site_1 owner to none (owner before this event: faction_3).
- Year 54 · event_0017 · **site_reoccupation** · actors faction_3; targets site_1, population_0_1
  Explicit enabling causes: event_0005, event_0016; evidence: population:population_0_1, site_owner:site_1.
  Set site site_1 owner to faction_3 (owner before this event: none).
- Year 57 · event_0018 · **artifact_transfer_loss** · actors faction_3; targets artifact_1, site_1
  Explicit enabling causes: event_0003; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_3/site_1 (Origin stays unknown).
- Year 58 · event_0019 · **migration** · actors faction_3; targets population_0_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (45 people, source source_0 unchanged): faction_3/site_2 -> faction_3/site_0.
- Year 60 · event_0020 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_1/site_0 -> lost//site_0 (Origin stays unknown).
- Year 61 · event_0021 · **migration** · actors faction_3; targets population_0_1, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (22 people, source source_0 unchanged): faction_3/site_1 -> faction_3/site_2.
  Artifact artifact_1: held/faction_3/site_1 -> lost//site_1 (Origin stays unknown).
- Year 65 · event_0022 · **relationship_change** · actors faction_2; targets faction_3, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 0 -> 1.
- Year 70 · event_0023 · **migration** · actors faction_1; targets population_1_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (22 people, source source_1 unchanged): faction_1/site_0 -> faction_1/site_2.
- Year 75 · event_0024 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_0
  Explicit enabling causes: event_0020; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_3/site_0 (Origin stays unknown).
- Year 80 · event_0025 · **faction_split** · actors faction_1; targets population_1_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_4 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_1 (44 people, source source_1 unchanged): faction_1/site_0 -> faction_4/site_0.
- Year 81 · event_0026 · **migration** · actors faction_1; targets population_1_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (37 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 84 · event_0027 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_3/site_0 -> held/faction_3/site_2 (Origin stays unknown).
- Year 87 · event_0028 · **migration** · actors faction_1; targets population_1_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (22 people, source source_1 unchanged): faction_1/site_2 -> faction_1/site_3.
- Year 89 · event_0029 · **site_reoccupation** · actors faction_1; targets site_3, population_1_2
  Explicit enabling causes: event_0028; evidence: population:population_1_2.
  Set site site_3 owner to faction_1 (owner before this event: none).
- Year 90 · event_0030 · **migration** · actors faction_4; targets population_1_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (44 people, source source_1 unchanged): faction_4/site_0 -> faction_4/site_3.
- Year 95 · event_0031 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_3/site_2 -> lost//site_2 (Origin stays unknown).
- Year 98 · event_0032 · **site_incident** · actors faction_1; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_1).
- Year 101 · event_0033 · **relationship_change** · actors faction_1; targets faction_4, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_4: 0 -> -1.
  Set site site_3 owner to faction_4 (owner before this event: faction_1).
- Year 102 · event_0034 · **site_reoccupation** · actors faction_3; targets site_0, population_0_2
  Explicit enabling causes: event_0019, event_0032; evidence: population:population_0_2, site_owner:site_0.
  Set site site_0 owner to faction_3 (owner before this event: none).
- Year 107 · event_0035 · **migration** · actors faction_4; targets population_1_1, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (44 people, source source_1 unchanged): faction_4/site_3 -> faction_4/site_2.

### Final state

Year 107. Active factions: faction_1, faction_2, faction_3, faction_4.

- faction_0: retired; political parent initial local community; institutional capacity 1.
- faction_1: active; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_0; institutional capacity 1.
- faction_3: active; political parent faction_0; institutional capacity 1.
- faction_4: active; political parent faction_1; institutional capacity 1.
- population_0_0: 25 people; source source_0 (human_derived); member faction_2; at site_0.
- population_0_1: 22 people; source source_0 (human_derived); member faction_3; at site_2.
- population_0_2: 45 people; source source_0 (human_derived); member faction_3; at site_0.
- population_1_0: 37 people; source source_1 (human_derived); member faction_1; at site_0.
- population_1_1: 44 people; source source_1 (human_derived); member faction_4; at site_2.
- population_1_2: 22 people; source source_1 (human_derived); member faction_1; at site_3.
- site_0: owner faction_3; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_3; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner faction_3; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner faction_4; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_2; origin unknown.
- artifact_1: lost; owner none; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_1|faction_2":-1,"faction_1|faction_3":0,"faction_1|faction_4":-1,"faction_2|faction_3":1}.

Stop: event_limit.

## Seed 1807263119

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 35 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 40 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 30 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 27 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 31 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 28 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 3 · event_0000 · **artifact_transfer_loss** · actors faction_0; targets artifact_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> held/faction_0/site_0 (Origin stays unknown).
- Year 5 · event_0001 · **site_incident** · actors faction_1; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: intact -> damaged; accessible true.
  Set site site_1 owner to none (owner before this event: faction_1).
- Year 6 · event_0002 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_0/site_0 -> held/faction_1/site_1 (Origin stays unknown).
- Year 10 · event_0003 · **site_reoccupation** · actors faction_1; targets site_1, population_1_0
  Explicit enabling causes: event_0001; evidence: site_owner:site_1.
  Set site site_1 owner to faction_1 (owner before this event: none).
- Year 15 · event_0004 · **site_incident** · actors faction_1; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: damaged -> ruined; accessible false.
  Set site site_1 owner to none (owner before this event: faction_1).
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 19 · event_0005 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 21 · event_0006 · **migration** · actors faction_1; targets population_1_2, site_0
  Explicit enabling causes: event_0004; evidence: site_condition:site_1.
  Move population_1_2 (28 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 23 · event_0007 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_2 (30 people, source source_0 unchanged): faction_0/site_0 -> faction_2/site_0.
- Year 24 · event_0008 · **migration** · actors faction_2; targets population_0_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (30 people, source source_0 unchanged): faction_2/site_0 -> faction_2/site_3.
- Year 25 · event_0009 · **site_reoccupation** · actors faction_2; targets site_3, population_0_2
  Explicit enabling causes: event_0008; evidence: population:population_0_2.
  Set site site_3 owner to faction_2 (owner before this event: none).
- Year 29 · event_0010 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
- Year 33 · event_0011 · **relationship_change** · actors faction_0; targets faction_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_1: 0 -> -1.
- Year 37 · event_0012 · **site_reoccupation** · actors faction_0; targets site_0, population_0_0
  Explicit enabling causes: event_0010; evidence: site_owner:site_0.
  Set site site_0 owner to faction_0 (owner before this event: none).
- Year 42 · event_0013 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: event_0005; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_0/site_0 (Origin stays unknown).
- Year 45 · event_0014 · **migration** · actors faction_2; targets population_0_2, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (30 people, source source_0 unchanged): faction_2/site_3 -> faction_2/site_4.
- Year 46 · event_0015 · **site_reoccupation** · actors faction_2; targets site_4, population_0_2
  Explicit enabling causes: event_0014; evidence: population:population_0_2.
  Set site site_4 owner to faction_2 (owner before this event: none).
- Year 49 · event_0016 · **migration** · actors faction_1; targets population_1_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (28 people, source source_1 unchanged): faction_1/site_0 -> faction_1/site_3.
- Year 51 · event_0017 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 55 · event_0018 · **migration** · actors faction_2; targets population_0_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (30 people, source source_0 unchanged): faction_2/site_4 -> faction_2/site_0.
- Year 57 · event_0019 · **artifact_transfer_loss** · actors faction_2; targets artifact_0, site_0
  Explicit enabling causes: event_0017; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_2/site_0 (Origin stays unknown).
- Year 62 · event_0020 · **site_incident** · actors faction_2; targets site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_4: damaged -> ruined; accessible false.
  Set site site_4 owner to none (owner before this event: faction_2).
- Year 63 · event_0021 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_2/site_0 -> held/faction_0/site_0 (Origin stays unknown).
- Year 67 · event_0022 · **migration** · actors faction_1; targets population_1_1, site_2
  Explicit enabling causes: event_0004; evidence: site_condition:site_1.
  Move population_1_1 (31 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_2.
- Year 68 · event_0023 · **relationship_change** · actors faction_0; targets faction_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: 0 -> -1.
  Set site site_0 owner to faction_2 (owner before this event: faction_0).
- Year 69 · event_0024 · **site_incident** · actors faction_2; targets site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_3: damaged -> ruined; accessible false.
  Set site site_3 owner to none (owner before this event: faction_2).
- Year 74 · event_0025 · **site_reoccupation** · actors faction_1; targets site_2, population_1_1
  Explicit enabling causes: event_0022; evidence: population:population_1_1.
  Set site site_2 owner to faction_1 (owner before this event: none).
- Year 77 · event_0026 · **site_incident** · actors faction_1; targets site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_2: damaged -> ruined; accessible false.
  Set site site_2 owner to none (owner before this event: faction_1).
- Year 81 · event_0027 · **migration** · actors faction_1; targets population_1_1, site_0
  Explicit enabling causes: event_0026; evidence: site_condition:site_2.
  Move population_1_1 (31 people, source source_1 unchanged): faction_1/site_2 -> faction_1/site_0.
- Year 86 · event_0028 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 90 · event_0029 · **faction_split** · actors faction_0; targets population_0_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_3 from political parent faction_0.
  Create faction_4 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_0 (35 people, source source_0 unchanged): faction_0/site_0 -> faction_4/site_0.
  Move population_0_1 (40 people, source source_0 unchanged): faction_0/site_0 -> faction_3/site_0.
  Retire faction_0 after distributing all population.
- Year 94 · event_0030 · **artifact_transfer_loss** · actors faction_4; targets artifact_0, site_0
  Explicit enabling causes: event_0028; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_4/site_0 (Origin stays unknown).
- Year 96 · event_0031 · **migration** · actors faction_1; targets population_1_0, site_0
  Explicit enabling causes: event_0004; evidence: site_condition:site_1.
  Move population_1_0 (27 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 98 · event_0032 · **site_incident** · actors faction_2; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: damaged -> ruined; accessible false.
  Set site site_0 owner to none (owner before this event: faction_2).
  Artifact artifact_0: held/faction_4/site_0 -> lost//site_0 (Origin stays unknown).
- Year 99 · event_0033 · **relationship_change** · actors faction_1; targets faction_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> -1.
- Year 103 · event_0034 · **faction_split** · actors faction_1; targets population_1_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_5 from political parent faction_1.
  Create faction_6 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (27 people, source source_1 unchanged): faction_1/site_0 -> faction_6/site_0.
  Move population_1_1 (31 people, source source_1 unchanged): faction_1/site_0 -> faction_5/site_0.
  Move population_1_2 (28 people, source source_1 unchanged): faction_1/site_3 -> faction_6/site_3.
  Retire faction_1 after distributing all population.
- Year 105 · event_0035 · **relationship_change** · actors faction_3; targets faction_4, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_4: 0 -> -1.

### Final state

Year 105. Active factions: faction_2, faction_3, faction_4, faction_5, faction_6.

- faction_0: retired; political parent initial local community; institutional capacity 0.
- faction_1: retired; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_0; institutional capacity 1.
- faction_3: active; political parent faction_0; institutional capacity 0.
- faction_4: active; political parent faction_0; institutional capacity 0.
- faction_5: active; political parent faction_1; institutional capacity 1.
- faction_6: active; political parent faction_1; institutional capacity 1.
- population_0_0: 35 people; source source_0 (human_derived); member faction_4; at site_0.
- population_0_1: 40 people; source source_0 (human_derived); member faction_3; at site_0.
- population_0_2: 30 people; source source_0 (human_derived); member faction_2; at site_0.
- population_1_0: 27 people; source source_1 (human_derived); member faction_6; at site_0.
- population_1_1: 31 people; source source_1 (human_derived); member faction_5; at site_0.
- population_1_2: 28 people; source source_1 (human_derived); member faction_6; at site_3.
- site_0: owner none; ruined; access false; technology observation unknown, understanding false, operating ability false.
- site_1: owner none; ruined; access false; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_0; origin unknown.
- artifact_1: lost; owner none; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_1":-1,"faction_0|faction_2":-1,"faction_1|faction_2":-1,"faction_3|faction_4":-1}.

Stop: event_limit.

## Seed 1521980171

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 41 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 45 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 35 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 37 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 29 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 26 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 5 · event_0000 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 8 · event_0001 · **faction_split** · actors faction_1; targets population_1_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_2 (26 people, source source_1 unchanged): faction_1/site_1 -> faction_2/site_1.
- Year 9 · event_0002 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 14 · event_0003 · **relationship_change** · actors faction_1; targets faction_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> 1.
- Year 18 · event_0004 · **site_reoccupation** · actors faction_0; targets site_0, population_0_0
  Explicit enabling causes: event_0002; evidence: site_owner:site_0.
  Set site site_0 owner to faction_0 (owner before this event: none).
- Year 22 · event_0005 · **migration** · actors faction_0; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (35 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_1.
- Year 27 · event_0006 · **relationship_change** · actors faction_0; targets faction_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_1: 0 -> -1.
  Set site site_1 owner to faction_0 (owner before this event: faction_1).
- Year 31 · event_0007 · **site_incident** · actors faction_0; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: intact -> damaged; accessible true.
  Set site site_1 owner to none (owner before this event: faction_0).
- Year 34 · event_0008 · **site_reoccupation** · actors faction_2; targets site_1, population_1_2
  Explicit enabling causes: event_0001, event_0007; evidence: population:population_1_2, site_owner:site_1.
  Set site site_1 owner to faction_2 (owner before this event: none).
- Year 37 · event_0009 · **artifact_transfer_loss** · actors faction_0; targets artifact_1, site_1
  Explicit enabling causes: event_0000; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_0/site_1 (Origin stays unknown).
- Year 40 · event_0010 · **migration** · actors faction_0; targets population_0_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (45 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_1.
- Year 42 · event_0011 · **relationship_change** · actors faction_0; targets faction_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: 0 -> -1.
  Set site site_1 owner to faction_0 (owner before this event: faction_2).
- Year 44 · event_0012 · **faction_split** · actors faction_1; targets population_1_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_3 from political parent faction_1.
  Create faction_4 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (37 people, source source_1 unchanged): faction_1/site_1 -> faction_3/site_1.
  Move population_1_1 (29 people, source source_1 unchanged): faction_1/site_1 -> faction_4/site_1.
  Retire faction_1 after distributing all population.
- Year 48 · event_0013 · **artifact_transfer_loss** · actors faction_4; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_0/site_1 -> held/faction_4/site_1 (Origin stays unknown).
- Year 51 · event_0014 · **migration** · actors faction_0; targets population_0_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (45 people, source source_0 unchanged): faction_0/site_1 -> faction_0/site_3.
- Year 54 · event_0015 · **relationship_change** · actors faction_0; targets faction_4, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_4: 0 -> 1.
- Year 57 · event_0016 · **site_incident** · actors faction_0; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: damaged -> ruined; accessible false.
  Set site site_1 owner to none (owner before this event: faction_0).
  Artifact artifact_1: held/faction_4/site_1 -> lost//site_1 (Origin stays unknown).
- Year 62 · event_0017 · **site_reoccupation** · actors faction_0; targets site_3, population_0_1
  Explicit enabling causes: event_0014; evidence: population:population_0_1.
  Set site site_3 owner to faction_0 (owner before this event: none).
- Year 64 · event_0018 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: event_0002; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_0/site_0 (Origin stays unknown).
- Year 66 · event_0019 · **relationship_change** · actors faction_3; targets faction_4, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_3/faction_4: 0 -> -1.
- Year 67 · event_0020 · **migration** · actors faction_4; targets population_1_1, site_4
  Explicit enabling causes: event_0016; evidence: site_condition:site_1.
  Move population_1_1 (29 people, source source_1 unchanged): faction_4/site_1 -> faction_4/site_4.
- Year 72 · event_0021 · **relationship_change** · actors faction_2; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 0 -> -1.
- Year 76 · event_0022 · **migration** · actors faction_0; targets population_0_2, site_4
  Explicit enabling causes: event_0016; evidence: site_condition:site_1.
  Move population_0_2 (35 people, source source_0 unchanged): faction_0/site_1 -> faction_0/site_4.
- Year 77 · event_0023 · **site_reoccupation** · actors faction_0; targets site_4, population_0_2
  Explicit enabling causes: event_0022; evidence: population:population_0_2.
  Set site site_4 owner to faction_0 (owner before this event: none).
- Year 81 · event_0024 · **migration** · actors faction_3; targets population_1_0, site_3
  Explicit enabling causes: event_0016; evidence: site_condition:site_1.
  Move population_1_0 (37 people, source source_1 unchanged): faction_3/site_1 -> faction_3/site_3.
- Year 85 · event_0025 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_3/site_3 (Origin stays unknown).
- Year 89 · event_0026 · **relationship_change** · actors faction_0; targets faction_4, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_4: 1 -> 0.
- Year 94 · event_0027 · **migration** · actors faction_2; targets population_1_2, site_3
  Explicit enabling causes: event_0016; evidence: site_condition:site_1.
  Move population_1_2 (26 people, source source_1 unchanged): faction_2/site_1 -> faction_2/site_3.
- Year 98 · event_0028 · **relationship_change** · actors faction_2; targets faction_3, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: -1 -> 0.
- Year 102 · event_0029 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: damaged -> ruined; accessible false.
  Set site site_0 owner to none (owner before this event: faction_0).
- Year 104 · event_0030 · **migration** · actors faction_0; targets population_0_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (35 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_3.
- Year 107 · event_0031 · **artifact_transfer_loss** · actors faction_4; targets artifact_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_3/site_3 -> held/faction_4/site_4 (Origin stays unknown).
- Year 111 · event_0032 · **migration** · actors faction_0; targets population_0_0, site_2
  Explicit enabling causes: event_0029; evidence: site_condition:site_0.
  Move population_0_0 (41 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_2.
- Year 112 · event_0033 · **site_reoccupation** · actors faction_0; targets site_2, population_0_0
  Explicit enabling causes: event_0032; evidence: population:population_0_0.
  Set site site_2 owner to faction_0 (owner before this event: none).
- Year 114 · event_0034 · **site_incident** · actors faction_0; targets site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_4: damaged -> ruined; accessible false.
  Set site site_4 owner to none (owner before this event: faction_0).
  Artifact artifact_0: held/faction_4/site_4 -> lost//site_4 (Origin stays unknown).
- Year 115 · event_0035 · **relationship_change** · actors faction_0; targets faction_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: -1 -> 0.

### Final state

Year 115. Active factions: faction_0, faction_2, faction_3, faction_4.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: retired; political parent initial local community; institutional capacity 0.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: active; political parent faction_1; institutional capacity 0.
- faction_4: active; political parent faction_1; institutional capacity 0.
- population_0_0: 41 people; source source_0 (human_derived); member faction_0; at site_2.
- population_0_1: 45 people; source source_0 (human_derived); member faction_0; at site_3.
- population_0_2: 35 people; source source_0 (human_derived); member faction_0; at site_3.
- population_1_0: 37 people; source source_1 (human_derived); member faction_3; at site_3.
- population_1_1: 29 people; source source_1 (human_derived); member faction_4; at site_4.
- population_1_2: 26 people; source source_1 (human_derived); member faction_2; at site_3.
- site_0: owner none; ruined; access false; technology observation unknown, understanding false, operating ability false.
- site_1: owner none; ruined; access false; technology observation unknown, understanding false, operating ability false.
- site_2: owner faction_0; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner faction_0; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_4; origin unknown.
- artifact_1: lost; owner none; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_1":-1,"faction_0|faction_2":0,"faction_0|faction_4":0,"faction_1|faction_2":1,"faction_2|faction_3":0,"faction_3|faction_4":-1}.

Stop: event_limit.

## Seed 1665175286

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 27 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 30 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 40 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 28 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 25 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 37 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 5 · event_0000 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_2 (40 people, source source_0 unchanged): faction_0/site_0 -> faction_2/site_0.
- Year 8 · event_0001 · **site_incident** · actors faction_1; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: intact -> damaged; accessible true.
  Set site site_1 owner to none (owner before this event: faction_1).
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 9 · event_0002 · **migration** · actors faction_0; targets population_0_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (27 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_3.
- Year 11 · event_0003 · **site_reoccupation** · actors faction_1; targets site_1, population_1_0
  Explicit enabling causes: event_0001; evidence: site_owner:site_1.
  Set site site_1 owner to faction_1 (owner before this event: none).
- Year 12 · event_0004 · **migration** · actors faction_1; targets population_1_1, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (25 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_2.
- Year 13 · event_0005 · **site_reoccupation** · actors faction_0; targets site_3, population_0_0
  Explicit enabling causes: event_0002; evidence: population:population_0_0.
  Set site site_3 owner to faction_0 (owner before this event: none).
- Year 17 · event_0006 · **migration** · actors faction_1; targets population_1_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (37 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_3.
- Year 19 · event_0007 · **site_reoccupation** · actors faction_1; targets site_2, population_1_1
  Explicit enabling causes: event_0004; evidence: population:population_1_1.
  Set site site_2 owner to faction_1 (owner before this event: none).
- Year 20 · event_0008 · **artifact_transfer_loss** · actors faction_2; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_2/site_0 (Origin stays unknown).
- Year 23 · event_0009 · **migration** · actors faction_0; targets population_0_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (30 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_3.
- Year 28 · event_0010 · **artifact_transfer_loss** · actors faction_2; targets artifact_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_2/site_0 -> lost//site_0 (Origin stays unknown).
- Year 31 · event_0011 · **migration** · actors faction_1; targets population_1_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (28 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_0.
- Year 36 · event_0012 · **site_incident** · actors faction_0; targets site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_3: damaged -> ruined; accessible false.
  Set site site_3 owner to none (owner before this event: faction_0).
- Year 38 · event_0013 · **relationship_change** · actors faction_0; targets faction_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_1: 0 -> -1.
- Year 43 · event_0014 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_0
  Explicit enabling causes: event_0010; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_1/site_0 (Origin stays unknown).
- Year 48 · event_0015 · **relationship_change** · actors faction_1; targets faction_2, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_1/faction_2: 0 -> -1.
- Year 53 · event_0016 · **migration** · actors faction_0; targets population_0_0, site_1
  Explicit enabling causes: event_0012; evidence: site_condition:site_3.
  Move population_0_0 (27 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_1.
- Year 58 · event_0017 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_1/site_0 -> held/faction_1/site_2 (Origin stays unknown).
- Year 60 · event_0018 · **migration** · actors faction_2; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (40 people, source source_0 unchanged): faction_2/site_0 -> faction_2/site_1.
- Year 64 · event_0019 · **faction_split** · actors faction_1; targets population_1_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_3 from political parent faction_1.
  Create faction_4 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (28 people, source source_1 unchanged): faction_1/site_0 -> faction_4/site_0.
  Move population_1_1 (25 people, source source_1 unchanged): faction_1/site_2 -> faction_4/site_2.
  Move population_1_2 (37 people, source source_1 unchanged): faction_1/site_3 -> faction_3/site_3.
  Set site site_1 owner to none (owner before this event: faction_1).
  Set site site_2 owner to none (owner before this event: faction_1).
  Set site site_2 owner to faction_4 (owner before this event: faction_1).
  Artifact artifact_0: held/faction_1/site_2 -> held/faction_4/site_2 (Origin stays unknown).
  Retire faction_1 after distributing all population.
- Year 67 · event_0020 · **relationship_change** · actors faction_0; targets faction_3, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_3: 0 -> -1.
- Year 70 · event_0021 · **site_reoccupation** · actors faction_0; targets site_1, population_0_0
  Explicit enabling causes: event_0016, event_0019; evidence: population:population_0_0, site_owner:site_1.
  Set site site_1 owner to faction_0 (owner before this event: none).
- Year 75 · event_0022 · **faction_split** · actors faction_4; targets population_1_1
  Explicit enabling causes: event_0019; evidence: faction:faction_4.
  Create faction_5 from political parent faction_4.
  Create faction_6 from political parent faction_4.
  Spend one institutional split capacity of faction_4.
  Move population_1_0 (28 people, source source_1 unchanged): faction_4/site_0 -> faction_6/site_0.
  Move population_1_1 (25 people, source source_1 unchanged): faction_4/site_2 -> faction_5/site_2.
  Set site site_2 owner to none (owner before this event: faction_4).
  Set site site_2 owner to faction_5 (owner before this event: faction_4).
  Artifact artifact_0: held/faction_4/site_2 -> held/faction_5/site_2 (Origin stays unknown).
  Retire faction_4 after distributing all population.
- Year 80 · event_0023 · **artifact_transfer_loss** · actors faction_2; targets artifact_1, site_1
  Explicit enabling causes: event_0001; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_2/site_1 (Origin stays unknown).
- Year 85 · event_0024 · **migration** · actors faction_6; targets population_1_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (28 people, source source_1 unchanged): faction_6/site_0 -> faction_6/site_2.
- Year 87 · event_0025 · **relationship_change** · actors faction_5; targets faction_6, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_5/faction_6: 0 -> 1.
- Year 88 · event_0026 · **artifact_transfer_loss** · actors faction_5; targets artifact_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_5/site_2 -> lost//site_2 (Origin stays unknown).
- Year 91 · event_0027 · **relationship_change** · actors faction_5; targets faction_6, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_5/faction_6: 1 -> 0.
- Year 92 · event_0028 · **migration** · actors faction_6; targets population_1_0, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (28 people, source source_1 unchanged): faction_6/site_2 -> faction_6/site_1.
- Year 94 · event_0029 · **artifact_transfer_loss** · actors faction_5; targets artifact_0, site_2
  Explicit enabling causes: event_0026; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_2 -> held/faction_5/site_2 (Origin stays unknown).
- Year 98 · event_0030 · **migration** · actors faction_0; targets population_0_1, site_0
  Explicit enabling causes: event_0012; evidence: site_condition:site_3.
  Move population_0_1 (30 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_0.
- Year 102 · event_0031 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
- Year 103 · event_0032 · **migration** · actors faction_2; targets population_0_2, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (40 people, source source_0 unchanged): faction_2/site_1 -> faction_2/site_4.
  Artifact artifact_1: held/faction_2/site_1 -> lost//site_1 (Origin stays unknown).
- Year 104 · event_0033 · **site_reoccupation** · actors faction_2; targets site_4, population_0_2
  Explicit enabling causes: event_0032; evidence: population:population_0_2.
  Set site site_4 owner to faction_2 (owner before this event: none).
- Year 108 · event_0034 · **faction_split** · actors faction_0; targets population_0_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_7 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_0 (27 people, source source_0 unchanged): faction_0/site_1 -> faction_7/site_1.
- Year 110 · event_0035 · **migration** · actors faction_7; targets population_0_0, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (27 people, source source_0 unchanged): faction_7/site_1 -> faction_7/site_2.

### Final state

Year 110. Active factions: faction_0, faction_2, faction_3, faction_5, faction_6, faction_7.

- faction_0: active; political parent initial local community; institutional capacity 0.
- faction_1: retired; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_0; institutional capacity 1.
- faction_3: active; political parent faction_1; institutional capacity 1.
- faction_4: retired; political parent faction_1; institutional capacity 0.
- faction_5: active; political parent faction_4; institutional capacity 0.
- faction_6: active; political parent faction_4; institutional capacity 0.
- faction_7: active; political parent faction_0; institutional capacity 0.
- population_0_0: 27 people; source source_0 (human_derived); member faction_7; at site_2.
- population_0_1: 30 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 40 people; source source_0 (human_derived); member faction_2; at site_4.
- population_1_0: 28 people; source source_1 (human_derived); member faction_6; at site_1.
- population_1_1: 25 people; source source_1 (human_derived); member faction_5; at site_2.
- population_1_2: 37 people; source source_1 (human_derived); member faction_3; at site_3.
- site_0: owner none; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_0; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner faction_5; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner faction_2; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_5; location site_2; origin unknown.
- artifact_1: lost; owner none; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_1":-1,"faction_0|faction_3":-1,"faction_1|faction_2":-1,"faction_5|faction_6":0}.

Stop: event_limit.

## Seed 958857423

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 22 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 24 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 33 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 43 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 45 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 33 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 3 · event_0000 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 6 · event_0001 · **migration** · actors faction_0; targets population_0_2, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (33 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_1.
- Year 7 · event_0002 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_0/site_1 (Origin stays unknown).
- Year 10 · event_0003 · **migration** · actors faction_0; targets population_0_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (22 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 12 · event_0004 · **relationship_change** · actors faction_0; targets faction_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_1: 0 -> -1.
  Set site site_1 owner to faction_0 (owner before this event: faction_1).
- Year 15 · event_0005 · **migration** · actors faction_1; targets population_1_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (33 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_2.
- Year 17 · event_0006 · **artifact_transfer_loss** · actors faction_1; targets artifact_0, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_1 -> held/faction_1/site_1 (Origin stays unknown).
- Year 21 · event_0007 · **migration** · actors faction_1; targets population_1_0, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (43 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_4.
- Year 22 · event_0008 · **site_reoccupation** · actors faction_1; targets site_4, population_1_0
  Explicit enabling causes: event_0007; evidence: population:population_1_0.
  Set site site_4 owner to faction_1 (owner before this event: none).
- Year 24 · event_0009 · **migration** · actors faction_1; targets population_1_1, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (45 people, source source_1 unchanged): faction_1/site_1 -> faction_1/site_3.
  Artifact artifact_0: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 28 · event_0010 · **site_reoccupation** · actors faction_1; targets site_3, population_1_1
  Explicit enabling causes: event_0009; evidence: population:population_1_1.
  Set site site_3 owner to faction_1 (owner before this event: none).
- Year 32 · event_0011 · **faction_split** · actors faction_1; targets population_1_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Create faction_3 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (43 people, source source_1 unchanged): faction_1/site_4 -> faction_2/site_4.
  Move population_1_1 (45 people, source source_1 unchanged): faction_1/site_3 -> faction_3/site_3.
  Move population_1_2 (33 people, source source_1 unchanged): faction_1/site_2 -> faction_3/site_2.
  Set site site_3 owner to none (owner before this event: faction_1).
  Set site site_3 owner to faction_3 (owner before this event: faction_1).
  Set site site_4 owner to none (owner before this event: faction_1).
  Set site site_4 owner to faction_2 (owner before this event: faction_1).
  Retire faction_1 after distributing all population.
- Year 34 · event_0012 · **site_reoccupation** · actors faction_3; targets site_2, population_1_2
  Explicit enabling causes: event_0011; evidence: population:population_1_2.
  Set site site_2 owner to faction_3 (owner before this event: none).
- Year 37 · event_0013 · **site_incident** · actors faction_3; targets site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_2: damaged -> ruined; accessible false.
  Set site site_2 owner to none (owner before this event: faction_3).
- Year 41 · event_0014 · **migration** · actors faction_0; targets population_0_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (24 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 43 · event_0015 · **artifact_transfer_loss** · actors faction_0; targets artifact_1, site_1
  Explicit enabling causes: event_0000; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_0/site_1 (Origin stays unknown).
- Year 45 · event_0016 · **migration** · actors faction_2; targets population_1_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_0 (43 people, source source_1 unchanged): faction_2/site_4 -> faction_2/site_3.
- Year 48 · event_0017 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_1
  Explicit enabling causes: event_0009; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_1 -> held/faction_0/site_1 (Origin stays unknown).
- Year 50 · event_0018 · **faction_split** · actors faction_3; targets population_1_2
  Explicit enabling causes: event_0011; evidence: faction:faction_3.
  Create faction_4 from political parent faction_3.
  Create faction_5 from political parent faction_3.
  Spend one institutional split capacity of faction_3.
  Move population_1_1 (45 people, source source_1 unchanged): faction_3/site_3 -> faction_5/site_3.
  Move population_1_2 (33 people, source source_1 unchanged): faction_3/site_2 -> faction_4/site_2.
  Set site site_3 owner to none (owner before this event: faction_3).
  Set site site_3 owner to faction_5 (owner before this event: faction_3).
  Retire faction_3 after distributing all population.
- Year 53 · event_0019 · **site_incident** · actors faction_2; targets site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_4: damaged -> ruined; accessible false.
  Set site site_4 owner to none (owner before this event: faction_2).
- Year 57 · event_0020 · **relationship_change** · actors faction_2; targets faction_5, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_5: 0 -> 1.
- Year 58 · event_0021 · **migration** · actors faction_4; targets population_1_2, site_1
  Explicit enabling causes: event_0013; evidence: site_condition:site_2.
  Move population_1_2 (33 people, source source_1 unchanged): faction_4/site_2 -> faction_4/site_1.
- Year 62 · event_0022 · **site_incident** · actors faction_5; targets site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_3: damaged -> ruined; accessible false.
  Set site site_3 owner to none (owner before this event: faction_5).
- Year 63 · event_0023 · **faction_split** · actors faction_0; targets population_0_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_6 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_0 (22 people, source source_0 unchanged): faction_0/site_4 -> faction_6/site_4.
- Year 66 · event_0024 · **migration** · actors faction_0; targets population_0_1, site_0
  Explicit enabling causes: event_0019; evidence: site_condition:site_4.
  Move population_0_1 (24 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_0.
- Year 71 · event_0025 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
- Year 76 · event_0026 · **relationship_change** · actors faction_2; targets faction_5, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_5: 1 -> -1.
- Year 78 · event_0027 · **site_reoccupation** · actors faction_0; targets site_0, population_0_1
  Explicit enabling causes: event_0024, event_0025; evidence: population:population_0_1, site_owner:site_0.
  Set site site_0 owner to faction_0 (owner before this event: none).
- Year 79 · event_0028 · **migration** · actors faction_6; targets population_0_0, site_1
  Explicit enabling causes: event_0019; evidence: site_condition:site_4.
  Move population_0_0 (22 people, source source_0 unchanged): faction_6/site_4 -> faction_6/site_1.
- Year 83 · event_0029 · **relationship_change** · actors faction_4; targets faction_6, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_4/faction_6: 0 -> -1.
- Year 85 · event_0030 · **migration** · actors faction_5; targets population_1_1, site_1
  Explicit enabling causes: event_0022; evidence: site_condition:site_3.
  Move population_1_1 (45 people, source source_1 unchanged): faction_5/site_3 -> faction_5/site_1.
- Year 88 · event_0031 · **site_incident** · actors faction_0; targets site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_1: intact -> damaged; accessible true.
  Set site site_1 owner to none (owner before this event: faction_0).
  Artifact artifact_0: held/faction_0/site_1 -> lost//site_1 (Origin stays unknown).
  Artifact artifact_1: held/faction_0/site_1 -> lost//site_1 (Origin stays unknown).
- Year 89 · event_0032 · **faction_split** · actors faction_0; targets population_0_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_7 from political parent faction_0.
  Create faction_8 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_1 (24 people, source source_0 unchanged): faction_0/site_0 -> faction_8/site_0.
  Move population_0_2 (33 people, source source_0 unchanged): faction_0/site_1 -> faction_7/site_1.
  Set site site_0 owner to none (owner before this event: faction_0).
  Set site site_0 owner to faction_8 (owner before this event: faction_0).
  Retire faction_0 after distributing all population.
- Year 91 · event_0033 · **site_reoccupation** · actors faction_5; targets site_1, population_1_1
  Explicit enabling causes: event_0030, event_0031; evidence: population:population_1_1, site_owner:site_1.
  Set site site_1 owner to faction_5 (owner before this event: none).
- Year 92 · event_0034 · **relationship_change** · actors faction_4; targets faction_5, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_4/faction_5: 0 -> 1.
- Year 94 · event_0035 · **migration** · actors faction_6; targets population_0_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (22 people, source source_0 unchanged): faction_6/site_1 -> faction_6/site_0.

### Final state

Year 94. Active factions: faction_2, faction_4, faction_5, faction_6, faction_7, faction_8.

- faction_0: retired; political parent initial local community; institutional capacity 0.
- faction_1: retired; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: retired; political parent faction_1; institutional capacity 0.
- faction_4: active; political parent faction_3; institutional capacity 0.
- faction_5: active; political parent faction_3; institutional capacity 0.
- faction_6: active; political parent faction_0; institutional capacity 1.
- faction_7: active; political parent faction_0; institutional capacity 0.
- faction_8: active; political parent faction_0; institutional capacity 0.
- population_0_0: 22 people; source source_0 (human_derived); member faction_6; at site_0.
- population_0_1: 24 people; source source_0 (human_derived); member faction_8; at site_0.
- population_0_2: 33 people; source source_0 (human_derived); member faction_7; at site_1.
- population_1_0: 43 people; source source_1 (human_derived); member faction_2; at site_3.
- population_1_1: 45 people; source source_1 (human_derived); member faction_5; at site_1.
- population_1_2: 33 people; source source_1 (human_derived); member faction_4; at site_1.
- site_0: owner faction_8; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_5; damaged; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: lost; owner none; location site_1; origin unknown.
- artifact_1: lost; owner none; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_1":-1,"faction_2|faction_5":-1,"faction_4|faction_5":1,"faction_4|faction_6":-1}.

Stop: event_limit.

## Seed 1977506391

### Initial state

Year 0. Active factions: faction_0, faction_1.

- faction_0: active; political parent initial local community; institutional capacity 2.
- faction_1: active; political parent initial local community; institutional capacity 2.
- population_0_0: 25 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 26 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_2: 35 people; source source_0 (human_derived); member faction_0; at site_0.
- population_1_0: 33 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_1: 24 people; source source_1 (human_derived); member faction_1; at site_1.
- population_1_2: 41 people; source source_1 (human_derived); member faction_1; at site_1.
- site_0: owner faction_0; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_1; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_0; location site_0; origin unknown.
- artifact_1: held; owner faction_1; location site_1; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {}.

### Chronology

- Year 2 · event_0000 · **migration** · actors faction_0; targets population_0_1, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_1 (26 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 4 · event_0001 · **artifact_transfer_loss** · actors faction_1; targets artifact_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_1/site_1 -> lost//site_1 (Origin stays unknown).
- Year 9 · event_0002 · **site_reoccupation** · actors faction_0; targets site_4, population_0_1
  Explicit enabling causes: event_0000; evidence: population:population_0_1.
  Set site site_4 owner to faction_0 (owner before this event: none).
- Year 11 · event_0003 · **faction_split** · actors faction_1; targets population_1_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_2 from political parent faction_1.
  Create faction_3 from political parent faction_1.
  Spend one institutional split capacity of faction_1.
  Move population_1_0 (33 people, source source_1 unchanged): faction_1/site_1 -> faction_3/site_1.
  Move population_1_1 (24 people, source source_1 unchanged): faction_1/site_1 -> faction_3/site_1.
  Move population_1_2 (41 people, source source_1 unchanged): faction_1/site_1 -> faction_2/site_1.
  Set site site_1 owner to none (owner before this event: faction_1).
  Set site site_1 owner to faction_2 (owner before this event: faction_1).
  Retire faction_1 after distributing all population.
- Year 13 · event_0004 · **site_incident** · actors faction_0; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: intact -> damaged; accessible true.
  Set site site_0 owner to none (owner before this event: faction_0).
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 18 · event_0005 · **relationship_change** · actors faction_2; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 0 -> 1.
- Year 22 · event_0006 · **site_reoccupation** · actors faction_0; targets site_0, population_0_0
  Explicit enabling causes: event_0004; evidence: site_owner:site_0.
  Set site site_0 owner to faction_0 (owner before this event: none).
- Year 23 · event_0007 · **migration** · actors faction_3; targets population_1_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (24 people, source source_1 unchanged): faction_3/site_1 -> faction_3/site_0.
- Year 25 · event_0008 · **relationship_change** · actors faction_2; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: 1 -> -1.
  Set site site_1 owner to faction_3 (owner before this event: faction_2).
- Year 27 · event_0009 · **artifact_transfer_loss** · actors faction_2; targets artifact_1, site_1
  Explicit enabling causes: event_0001; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_1 -> held/faction_2/site_1 (Origin stays unknown).
- Year 32 · event_0010 · **relationship_change** · actors faction_2; targets faction_3, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_2/faction_3: -1 -> 1.
- Year 34 · event_0011 · **migration** · actors faction_0; targets population_0_2, site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_2 (35 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_4.
- Year 35 · event_0012 · **site_incident** · actors faction_0; targets site_4
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_4: damaged -> ruined; accessible false.
  Set site site_4 owner to none (owner before this event: faction_0).
- Year 39 · event_0013 · **artifact_transfer_loss** · actors faction_3; targets artifact_1, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_1: held/faction_2/site_1 -> held/faction_3/site_0 (Origin stays unknown).
- Year 44 · event_0014 · **migration** · actors faction_2; targets population_1_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_2 (41 people, source source_1 unchanged): faction_2/site_1 -> faction_2/site_2.
- Year 45 · event_0015 · **site_reoccupation** · actors faction_2; targets site_2, population_1_2
  Explicit enabling causes: event_0014; evidence: population:population_1_2.
  Set site site_2 owner to faction_2 (owner before this event: none).
- Year 49 · event_0016 · **migration** · actors faction_0; targets population_0_2, site_2
  Explicit enabling causes: event_0012; evidence: site_condition:site_4.
  Move population_0_2 (35 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_2.
- Year 52 · event_0017 · **relationship_change** · actors faction_0; targets faction_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: 0 -> 1.
- Year 56 · event_0018 · **migration** · actors faction_3; targets population_1_1, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_1_1 (24 people, source source_1 unchanged): faction_3/site_0 -> faction_3/site_1.
  Artifact artifact_1: held/faction_3/site_0 -> lost//site_0 (Origin stays unknown).
- Year 61 · event_0019 · **relationship_change** · actors faction_0; targets faction_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: 1 -> -1.
  Set site site_2 owner to faction_0 (owner before this event: faction_2).
- Year 66 · event_0020 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: event_0004; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_0/site_0 (Origin stays unknown).
- Year 67 · event_0021 · **relationship_change** · actors faction_0; targets faction_2, site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: -1 -> 0.
- Year 70 · event_0022 · **migration** · actors faction_0; targets population_0_0, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (25 people, source source_0 unchanged): faction_0/site_0 -> faction_0/site_3.
  Artifact artifact_0: held/faction_0/site_0 -> lost//site_0 (Origin stays unknown).
- Year 73 · event_0023 · **site_incident** · actors faction_0; targets site_2
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_2: damaged -> ruined; accessible false.
  Set site site_2 owner to none (owner before this event: faction_0).
- Year 78 · event_0024 · **site_reoccupation** · actors faction_0; targets site_3, population_0_0
  Explicit enabling causes: event_0022; evidence: population:population_0_0.
  Set site site_3 owner to faction_0 (owner before this event: none).
- Year 82 · event_0025 · **migration** · actors faction_0; targets population_0_1, site_0
  Explicit enabling causes: event_0012; evidence: site_condition:site_4.
  Move population_0_1 (26 people, source source_0 unchanged): faction_0/site_4 -> faction_0/site_0.
- Year 87 · event_0026 · **artifact_transfer_loss** · actors faction_0; targets artifact_0, site_0
  Explicit enabling causes: event_0022; evidence: artifact:artifact_0.
  Artifact artifact_0: lost//site_0 -> held/faction_0/site_0 (Origin stays unknown).
- Year 92 · event_0027 · **migration** · actors faction_2; targets population_1_2, site_3
  Explicit enabling causes: event_0023; evidence: site_condition:site_2.
  Move population_1_2 (41 people, source source_1 unchanged): faction_2/site_2 -> faction_2/site_3.
- Year 97 · event_0028 · **artifact_transfer_loss** · actors faction_3; targets artifact_0, site_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Artifact artifact_0: held/faction_0/site_0 -> held/faction_3/site_1 (Origin stays unknown).
- Year 102 · event_0029 · **faction_split** · actors faction_0; targets population_0_1
  Explicit enabling causes: none (no motive inferred); evidence: .
  Create faction_4 from political parent faction_0.
  Spend one institutional split capacity of faction_0.
  Move population_0_1 (26 people, source source_0 unchanged): faction_0/site_0 -> faction_4/site_0.
- Year 106 · event_0030 · **migration** · actors faction_0; targets population_0_0, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Move population_0_0 (25 people, source source_0 unchanged): faction_0/site_3 -> faction_0/site_0.
- Year 109 · event_0031 · **artifact_transfer_loss** · actors faction_4; targets artifact_1, site_0
  Explicit enabling causes: event_0018; evidence: artifact:artifact_1.
  Artifact artifact_1: lost//site_0 -> held/faction_4/site_0 (Origin stays unknown).
- Year 110 · event_0032 · **relationship_change** · actors faction_0; targets faction_4, site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_4: 0 -> -1.
  Set site site_0 owner to faction_4 (owner before this event: faction_0).
- Year 114 · event_0033 · **migration** · actors faction_0; targets population_0_2, site_3
  Explicit enabling causes: event_0023; evidence: site_condition:site_2.
  Move population_0_2 (35 people, source source_0 unchanged): faction_0/site_2 -> faction_0/site_3.
- Year 119 · event_0034 · **site_incident** · actors faction_4; targets site_0
  Explicit enabling causes: none (no motive inferred); evidence: .
  Site site_0: damaged -> ruined; accessible false.
  Set site site_0 owner to none (owner before this event: faction_4).
  Artifact artifact_1: held/faction_4/site_0 -> lost//site_0 (Origin stays unknown).
- Year 122 · event_0035 · **relationship_change** · actors faction_0; targets faction_2, site_3
  Explicit enabling causes: none (no motive inferred); evidence: .
  Relationship faction_0/faction_2: 0 -> -1.
  Set site site_3 owner to faction_2 (owner before this event: faction_0).

### Final state

Year 122. Active factions: faction_0, faction_2, faction_3, faction_4.

- faction_0: active; political parent initial local community; institutional capacity 1.
- faction_1: retired; political parent initial local community; institutional capacity 1.
- faction_2: active; political parent faction_1; institutional capacity 1.
- faction_3: active; political parent faction_1; institutional capacity 1.
- faction_4: active; political parent faction_0; institutional capacity 1.
- population_0_0: 25 people; source source_0 (human_derived); member faction_0; at site_0.
- population_0_1: 26 people; source source_0 (human_derived); member faction_4; at site_0.
- population_0_2: 35 people; source source_0 (human_derived); member faction_0; at site_3.
- population_1_0: 33 people; source source_1 (human_derived); member faction_3; at site_1.
- population_1_1: 24 people; source source_1 (human_derived); member faction_3; at site_1.
- population_1_2: 41 people; source source_1 (human_derived); member faction_2; at site_3.
- site_0: owner none; ruined; access false; technology observation unknown, understanding false, operating ability false.
- site_1: owner faction_3; intact; access true; technology observation unknown, understanding false, operating ability false.
- site_2: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- site_3: owner faction_2; damaged; access true; technology observation inert_remains, understanding false, operating ability false.
- site_4: owner none; ruined; access false; technology observation inert_remains, understanding false, operating ability false.
- artifact_0: held; owner faction_3; location site_1; origin unknown.
- artifact_1: lost; owner none; location site_0; origin unknown.
- Relationships (-1 hostile / 0 neutral / 1 cooperative): {"faction_0|faction_2":-1,"faction_0|faction_4":-1,"faction_2|faction_3":1}.

Stop: event_limit.
