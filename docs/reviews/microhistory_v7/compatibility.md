# Microhistory v7 호환성 검증

2026-10-31. 기반 `a8e32955ab7047000e648f8c0d2256a9bdfff0f9`, 브랜치 `codex/history-generator-v7-microhistory`. M048 한국어와 History v6 A/B/C 및 기존 탐험 아트를 포함한다. main 미병합.

- 거시 Engine/Reducer, v5/v6 카탈로그, Manifest/Event Log를 변경하지 않는다. 별도의 전투·시간 스케줄러 없이 기존 Actor/Action/Scheduler와 현재 상태 override를 재사용한다.
- 기본 씬에서는 미시사가 꺼져 있다. 명시적인 `history_zone/3`와 `history_play_save/3`만 새 경로를 사용하며 /1,/2 생성·저장복원을 유지한다. 저장에는 현재 개입만 기록하고 재생성된 객관적 과거는 수정하지 않는다.
- `bash tools/check_godot.sh` exit0: 기존45+신규1, 총46개 테스트 스크립트와 editor import/startup/dataset freshness 통과. [전체 로그](full-gate.log). 이 실행의 미시사 검사는1858개였다.
- 이후 익사/시신 부재 사실·결과 심각도 및 DEBUG 로드 선택기 보완을 검증했다. 최종 집중1859검사 오류0([로그](focused.log)), 최종500세계/1500지역 오류0([로그](corpus.log)),297리소스/248UID/8씬 audit 통과([로그](layout.log)). 전체 gate를 그 이후 다시 실행했다고 주장하지 않는다.
- v5 실제 Trace67건을 물질적 유사성 참조로 검증했다. 현재 v6 Manifest에 없는 v5 Trace/Question을 만들어 연결하지 않는다. v5 전체 질문의 공간 바인딩은 후속이다.
- 한국어는 기존 GameText/PO 경계를 사용한다. 저장과 사건에는 locale-free 코드·인자를 사용한다. 실제 GPU8화면을 확인했으나 인간 원어민·자유 플레이 승인과 패키지 export는 미실시다.
- 기존7개 checkout의 HEAD/status 및 dirty/untracked91파일 SHA256 보존을 확인했다([상세](preservation.json)). 신규 작업 폴더의 Godot 생성 EverRogue import12개는 커밋에서 제외한다.

새 wiki 문서는 공식 `sync_notion_wiki.py` parser/taxonomy로17블록 검사를 통과했다. 전체 wiki 검사는 기반에도 존재하는 `docs/wiki/localization_strategy.md`의 허용되지 않은 status 값 때문에 실패한다. 해당 기존 문서는 변경하지 않았고 Notion에 게시하지 않았다.
