# M049 — Microhistory v7

상태: 구현 및 자동 검증 완료, `codex/history-generator-v7-microhistory` 전용. 인간 자유 플레이·재미 평가는 미실시. 기존 M049 탐험/아트 마일스톤과 별개의 사용자 요청이며 기존 기록을 유지한다.

기반: `a8e32955ab7047000e648f8c0d2256a9bdfff0f9`. M048 한국어 `f49c17c`, Phase C `3f7473c`, Phase B `12f48ba`, Phase A `c0f1f92`를 포함한다. main에 병합하지 않는다.

계약: 거시 Event Log/Manifest 불변, 지역별 독립 RNG, 객관사/남은 증거/해석 분리. 신규 `history_zone/3` 소비자에서만 미시사 생성. 이전 /1,/2 저장과 생성 경로 유지. 기존 Actor/Action/시간/인벤토리/override 재사용.

산출물: 6계열 36원형/72결과/46증거, 실제 공간 배치와 개입, 500세계/1500지역/8298사건 검증 오류0, 무작위20지역 한국어 검수, 실제 GPU8화면. 집중1859검사 및 전체46스크립트 gate 통과. [구현·분포·성능·한계](../reviews/microhistory_v7/report.md), [호환성](../reviews/microhistory_v7/compatibility.md), [설계와 재현](../specs/history_microhistory_v7.md).

후속: 장면의 구조적 반복 감소, 환경별 실제 심각도 비율 조정, 단일 파편의 가독성, v5 전체 질문의 공간 연결, 인간 자유 플레이 평가. 현재 자동 증거를 체감 품질 승인으로 간주하지 않는다.

복구 기록: `C:/GameDev/microhistory-v7-work-record.md`. 원본 7 checkout 보존 해시: `C:/GameDev/microhistory-v7-preservation-before.json`.
