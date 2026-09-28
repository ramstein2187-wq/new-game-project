# Basic melee v2 작업 기록

- 요청: believable tactical AI Phase A 구현, 기존 production Action/scheduler/combat 유지, 테스트 및 문서 갱신, commit/push (main merge 금지).
- 2026-09-28: 원본 AGENTS.md 및 설계 기준 브랜치 AGENTS.md 확인. 원본 checkout codex/m019-common-actor의 미추적 파일 보존.
- WSL Git fetch로 origin/chat/believable-tactical-ai 최신화: 9264723. Windows SSH는 host key 검증 실패; 기존 WSL 인증 경로 사용.
- 앱 worktree 도구는 현재 cwd C:/GameDev가 Git 저장소가 아니므로 실패. fallback으로 C:/GameDev/basic-melee-v2에 codex/basic-melee-v2 worktree 생성.
- 필독 구현/설계/현재 milestone 문서 검토 진행. M025는 별도 TR 작업 브랜치가 있으므로 새 구현 milestone 번호는 충돌 확인 후 M026 예정.
- 설계 초안: 작은 정보 경계 context, 기존 planner에 복수 후보, target만 확실한 적으로 취급. 다른 actor는 점유/혼잡만 평가. 성공한 Action에서만 한정된 방어 행동 예산을 기록하여 무한 Hold/Retreat/Reposition 방지. 선택 조회는 예산/시간/RNG를 변경하지 않음.
- 미완료: 구현, focused/full test, behavior review, 문서 최종화, diff review, commit/push.

## 구현 / 첫 검증

- MeleeContext와 BasicMeleeTactics 후보 생성 구현. 기존 planner/Actions/RatTactics 변경 없음. Actor별 망설임 예산은 perform_action 성공 뒤에만 갱신.
- focused A–H 및 추가 I–L 12개 시나리오 통과, 첫 전체 suite 23/23 PASS (211 assertions).
- 첫 실행의 테스트 지역변수 타입 오류 수정. Reposition fixture에서 낮은 aggression과 실제 두 점유 칸의 혼잡 감소를 설정해 선택 동기를 명확히 함. 이 과정에서 production 가중치 조정 없음.
- 상태/trace review 중 fallback의 route_blocked는 실제 routing이 가능한 신체 상태에서만 표기하도록 보정. 영구 차단 fallback과 locomotion 상실 시 인접 공격 보존 테스트 추가. 최종 suite 재실행 예정.
- production paired smoke: 24000..24019 × 3 matchups × 2 sides = 120 encounters; 0 errors, 0 stalled; 1.138초. 기본 combat 정의를 변경하지 않음.
- wiki/spec/diagram 갱신. 수동 GUI/재미/가독성 검증은 미수행. TR 데이터 변경 없음; M025 별도 브랜치의 기존 revision 상수를 v2로 통합해야 함.

## 최종 검증 및 전달 준비

- 최종 `bash tools/check_godot.sh`: exit 0, 23/23 scripts PASS, focused 12 groups / 213 assertions. raw log: docs/reviews/2026-09-28-m026-godot-check.txt.
- 문서의 Notion taxonomy를 기존 허용 값으로 유지하고 branch-only 상태는 본문에 명시. wiki/knowledge offline validators 모두 PASS.
- 코드/trace behavior review 완료. 공통 Action/scheduler/combat/RatTactics와 기존 tests 변경 없음. 가중치 승률 튜닝 없음.
- M026 문서, ROADMAP, MILESTONES, wiki/spec/diagram 및 상세 validation report 완료.
- Windows Git에서 commit, 기존 WSL 인증의 원본 저장소에서 명시적 작업 branch ref를 push할 예정. worktree의 Windows gitdir 경로는 WSL에 맞게 변경하지 않음.
- 최종 commit SHA, push 검증과 잔여 상태는 `C:\GameDev\basic-melee-v2-delivery.md`에 기록한다. main merge 없음. 이번 worktree import 과정에서 생성된 tileset .import 파일은 stage 대상이 아니며 그대로 보존.
- 후속: 수동 play review, 큰 지도/군중 profiling, M025 정책 revision 통합 및 TR 재측정.
