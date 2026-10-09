# M048 한국어 현지화 후속 작업

**구현·검증 완료, 작업 브랜치만. main 미통합.** 2026-10-09.

- branch: `codex/m048-korean-playtest-localization`
- worktree: `C:\GameDev\m048-korean-playtest-localization`
- exact base / verified remote design HEAD: `4856655269f7a49313ba9bbda58eaa3e594cfed6`
- 요청: M048을 자연스러운 한국어로 플레이, native 번역·번들 폰트, canonical history/Manifest/Actor/Save/행동/시간/RNG 불변. 새 milestone 번호 없음.

## 작업 기록

1. 원격 HEAD 및 관련 설계·Canon·UI/runtime 조사 후 독립 worktree 생성. primary와 Phase C checkout의 27개 미커밋/미추적 파일을 SHA256으로 기록했다. 사용자의 양쪽 project.godot, primary body_templates.json 및 import sidecars를 보존했다.
2. ko.po/POT, GameText/LocalizedCharacterText, locale-free notice/result code+args, Noto Sans KR 2.004 OFL 고지, 물리 키 우선 입력, container/wrap/scroll 배치를 구현했다. RuntimeSave/WorldActorState/HistoryEngine/NameGenerator/시간·전투 공식은 수정하지 않았다.
3. 기존 613/284 검증 PASS. 현지화 집중은 814 → UI coverage878 → 실제 damage/domain 및 기록 종류를 추가한 최종932 checks PASS. en/ko 실제 행동·전투·효과·이벤트·전체 저장·RNG 동일성을 검증했다.
4. 실제 GPU18 captures (6화면×1152×648/1920×1080/800×600). 작은 Character의 열 겹침을 발견해 세로 배치/Inspector 자동 스크롤로 수정했다. 긴 기록 스크롤·물리 키·modal/focus·save/load도 scene에서 검증했다.
5. 500 worlds / 1,500 zones corpus PASS, 실패/의도치 않은 접근 불가0. timing 제외 모든 집계가 기존 M048 결과와 동일. exporter는 변경 없이 freshness 확인. 전체43 scripts gate 최종 상태는 검증 보고서 참조.
6. 번역 결정/wiki/spec/ROADMAP 및 이 후속 기록 갱신. 의도한 파일만 stage/commit/push, 원격 SHA 확인은 아래 인계 기록으로 남긴다.

## 검증·인계 위치

- [통합 보고서 및 여섯 실제 화면](../reviews/m048_korean_localization/report.md)
- focused log: `C:\GameDev\m048-ko-focused.log`
- full log: `C:\GameDev\m048-ko-full-final.log`
- GPU/corpus: `.godot/korean-playtest-captures/` (tool로 재생성)
- preservation before/after: `C:\GameDev\m048-localization-preservation-before.json` / `m048-localization-preservation-after.json`
- 최종 commit/remote SHA 및 재개 정보: `C:\GameDev\m048-korean-localization-handoff.md`

## 남은 범위

실제 OS 한글 IME 입력, 사용자 문체/플레이 승인 및 export package는 수행하지 않았다. 언어 메뉴·전체 미래 콘텐츠 번역·풍부한 효과 출처 이름·실제 엔티티의 M035 name binding은 후속이다. 기존 Git 기반 Notion mirror 규칙을 따르며 live sync/main merge는 하지 않는다.
