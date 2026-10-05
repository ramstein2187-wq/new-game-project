+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M036 architecture / M037 generation v2 — main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/history-generator-v0.2/docs/specs/history_generator.md"
icon = "📜"
+++
# 최근 역사 생성과 현재의 흔적

History Generator v0.2는 M036의 데이터 흐름을 유지하고 generation algorithm을
1에서 2로 바꾼 독립 지역사 prototype다. [Canon](../lore/world_canon_v0_1.md)과
[생성 계약](../lore/history_generation_contract.md)은 변경하지 않았다. 지역 대국의
붕괴에 기여한 압력과 인간 반응을 생성하며, 세계 전체 붕괴 원인은 RESERVED다.

Canon → objective events/effects → present projection → 별도 claims → validation
순서다. 세 개의 고정 variant 대신 전신 정치형태 5종, 자연/인간/Core/Observer 압력,
인간 반응 4종, 붕괴 양상 3종, 후계 A/B 각각 6종, C 형성 4종을 독립 seed로 조합한다.
극단 계절, 임계 지질 응력, 개조 잔여 화학층, 방사 환경과 행정·계승·이주·적응 갈등이
서로 다른 지역사를 만든다. 모든 역사를 물 부족·운하·펌프로 설명하지 않는다.

한 지역에 세 후계 공동체, 19~21 사건, 유적3~4, 정착지5, 미확인 발견1을 남긴다.
초기 붕괴와 재건이 조밀하고 중간은 성기며 최근 100년에는 작은 사건 다섯 개가 이어진다.
A는 두 잔존 집단의 합류, B는 이주 가구, C는 B의 분화로 생긴다. 형태와 계보가 다르며
현재 관계 점수는 실제 사건 effect를 replay한 결과다. 출처 event ID를 계속 보존한다.

Observer는 개발 용어이자 일부 학자·기술자의 분류명이며 실제 자칭이 아니다.
`observer_scholarly_term`이 없는 공동체의 Claim에는 Observer/관찰자라는 단어가
나오지 않는다. 고대 건설자, 하늘 기계, 유성·신벌·비밀 무기 같은 해석을 사용할 수 있다.
객관적 provenance와 주민의 해석은 분리한다. Claim의 확신은 진실의 확률이 아니다.
계보·생활 방식·정당성·최근 관계·관점이 해석을 바꾸며 Claim은 현재 상태를 수정하지 않는다.

희귀 Observer 궤도 자산 피해와 Core 개입은 별도 budget/시스템으로 기록한다.
Core는 기존 장벽·시설·유체압·임계 지형을 이용한 국소 결과만 남긴다. 의도와 활성화·표적
선택 이유는 unknown이다. 모든 잔존 자산을 하나의 AI로 묶지 않는다. 확인된 Observer
잔해는 별도 system consequence이고 일반 발견물의 기원은 계속 unknown이다.

기본 이름은 M035 canonical GeneratedName과 en/ko 작명 데이터를 사용한다.
역사 ID와 이름을 분리하고 생활·계보에 최소 naming context를 남긴다. 이름의 번역·형태
변경이나 발견 motif 선택은 붕괴·관계 등 다른 RNG domain을 바꾸지 않는다.
기존 naming prototype culture ID `administrator`는 이번에 변경하지 않았다.

1~1000 seed에서 Observer/Core 없는 역사 85.7%, Observer 유산 4.5%, Core 10.2%,
궤도 폭격 0.7%가 관측되었다. 이는 유한 표본의 실제 발생률이다.
[분포 JSON](../reviews/history_v2/diversity.json), [대표 10개 전체 출력](../reviews/history_v2/samples.md),
[질적 검토와 검증 기록](../reviews/2026-10-06-history-generator-v0_2.md)을 함께 확인할 수 있다.

실행은 `tools/preview_history.gd -- 42`, `--json`으로 diagnostic output을 출력한다.
`tools/analyze_history.gd -- 1000 OUTPUT_DIRECTORY`는 분포와 대표 보고서를 재생성한다.
[상세 설계](../specs/history_generator.md)와 [M037](../milestones/M037_history_generation_v2.md)에
구체적인 API/검증 범위를 기록했다. Gameplay/map/save/post-start simulation은 아직 연결하지
않았다. 다음 단계는 projected records를 worldgen/faction의 명시적 year-0 경계로 전달하는 일이다.
