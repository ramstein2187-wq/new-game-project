# M049 구현 및 검증 보고서

2026-10-28 · [Issue #53 원문 스냅샷](issue-53.md) · 작업 브랜치 `codex/m049-playable-exploration-art`.
기준은 M048 `f49c17cf1a141bd1d71d964d60bc75dc3125ddcb`이다. main에는 병합하지 않는다.

## 실행

Godot 4.7.2 Mono에서 이 worktree의 `project.godot`를 열고
`scenes/debug/history_world_playground.tscn`을 선택해 **F6**를 누른다.
F5 기본 프로젝트 씬은 기존 전투 테스트룸이다. 별도 서버·이미지 API는 필요 없다.

WASD/방향키/숫자패드로 이동 및 인접 적 공격, Space 대기. 인접 물체 방향을
바라보거나 클릭한 뒤 G 채집·회수, E 문, X 제거, U 이용, P 수리, T 지역 이동,
I 조사, V 기록 기반 안정화, O 배상. C 캐릭터, H 기록, F3 진단,
M 개요 지도, +/- 또는 휠 확대/축소. 기록은 필수 진행 조건이 아니다.
정상 맵은 1–4배 정수 확대이며 기본 2배, 카메라는 양축에서 플레이어를 따라간다.
800×600에서는 오른쪽 설명/진행 정보의 일부를 스크롤해서 읽는다.

새 기본 슬롯은 `user://m049_exploration_v2.json`이다. /1 저장은 원래 40칸 지형으로
복원하며, 새 세계 생성은 다시 /2를 선택한다. GUI 검증은 별도
`user://m049_capture_only.json`만 사용했다.

## 구현 범위와 설계 근거

| 요구 | 구현 및 근거 |
|---|---|
| 넓은 실제 지역 3개 | Manifest의 연결된 locality 3개를 각각 96×64로 실현. 출구를 동쪽의 먼 두 지점으로 이동. 시설이 8개를 넘으면 높이를 32칸 단위로 확장 |
| 공간 다양성 | 산업 기둥 구조, 열린 삼림 폐허, 다중 파손 출입구, 모서리가 닫힌 관측 구조. 기존 시설 기능·파손 상태와 Project·Scar·소유권을 적용. 물·숲·외곽 순환길·샛길·남부 지형 랜드마크 |
| 다른 비용의 접근 | 불안정한 횡단로: 자재 2개로 18칸의 실제 위험 제거, 또는 남쪽 마른 길로 무료 우회. 위험을 밟으면 기존 피해 경로로 2 HP 손실 |
| 실제 아트 | 108개 16×16 PNG 타일과 이름/출처 인덱스. 18색 팔레트, 경계 마스크, 4종 실내 바닥, 나무·물체·적 실루엣. nearest 및 플레이어/적/소유권 대비 |
| 절차 오브젝트 | corpus에서 28종 확인. 장식, 제거 가능한 장애물, 유한 채집원, 단말·기록·문·잔해·공사·고유 물품, 캠프·쉼터·작업대·도구 교환·랜드마크를 실제 역할로 구분 |
| 합법 보상·비전투 목표 | 가지/돌/보급품 4/3/4 자재. 전망 지점은 이동 비용 10% 감소 효과, 횡단로 보수는 실제 위험 제거. 현재 환경 provenance와 역사 물량 분리 |
| 기존 다종 적 | Catalog의 fauna 8종, 지형/위험 가중치, 지역당 최대 3마리 단독 배치. 스폰/상호 간 17칸, 출구/야영지/쉼터 12칸 안전거리. TR·전투 수치 변경 없음 |
| 지역 이동·저장 | 기존 Scheduler/Actor/Actions를 사용. 문·채집·수리·장비 교환·효과·NPC 부상/사망·RNG·대기시간·진행 지표를 /2 저장에 포함. /1은 원래 계약 유지 |
| 한국어·진행 안내 | PO/GameText 확장. 다음 목표 방향/거리, 방문 칸·발견 지점·현장 목표 표시. Character Overview와 기록/F3 유지 |

새 프로필을 소비자 계층에 두어 과거 생성/Manifest 기준을 바꾸지 않았다.
기존 /1을 단순히 확대하면 구 저장의 좌표와 적 정체성이 충돌하므로 /2를 명시했다.
적 인지 거리/시야만 world adapter에서 제한하며, 범위 안에서는 기존 Catalog AI를
사용한다. 큰 맵의 모든 적이 즉시 추격하는 문제를 피하기 위한 현재 인지 규칙이다.
지속적인 추격 기억이나 안개 지도는 구현하지 않았다. 셀별 오브젝트 인덱스는
전술 탐색 때 전체 오브젝트를 반복 순회하는 비용을 줄인다.

## 자동 검증

환경: Windows, Godot `4.7.2.stable.mono.official.ed1daf0bf`, GPU NVIDIA GeForce RTX 5070 Ti.
전체 gate 결과는 아래 완료 기록과 [원문 로그](full-gate.log)를 따른다.

| 검사 | 결과 |
|---|---|
| 전체 gate | 기존 43개 + 새 2개 = 45개 스크립트, editor import, main smoke, dataset freshness 모두 통과; exit 0 |
| 기존 Phase C | 613 checks 통과; 원래 테스트 삭제/수정 없음 |
| M049 focused | 49 checks 통과: 유한 합법 채집, 두 목표, 장비 교환, 실이동/재방문, 구 저장, 손상 저장 원자적 거부, 8종 Actor snapshot, 가변 시설 수 |
| Catalog 실전 경로 | 65 checks 통과, 8종 각각 AI 공격/시간/피해/사망/부상 저장/동결/재방문. [encounters.json](encounters.json) |
| 한국어 | 최종 1,086 checks 통과; locale 전환 및 기존 계약 (전체 gate 시점 1,085) |
| 생산 corpus | 500 Seed × 3 = **1,500 지역**, 실패 0. [corpus_500.json](corpus_500.json) |
| 실제 행동 두 정책 | 10 Seed × 2, 20/20 정확한 저장 복원. 성공·사망을 모두 보존. [strategies.json](strategies.json) |
| 실제 GUI | 3 Seed × 3 해상도 + 각 개요/캐릭터/시설 = 18장, 검증 실패 0. WASD, zoom, 지도, 창 열기/닫기, F5 파일, Space 시간 증가, F9 정확 복원 |
| atlas 재현 | `python tools/build_exploration_atlas.py --check` 통과: PNG/JSON 바이트 동일 |
| 경로/UID | 287 resources, 239 script UIDs, 7 scenes 통과 |

Corpus는 매 Seed 재생성 일치 및 Manifest hash 불변을 500회 확인했다.
유효 플레이어 스폰 1,500, 실제 적 4,500, 안전한 먼 출구 2,386,
접근 가능한 오브젝트 73,569개. 모든 corpus 맵은 96×64였다.
별도 소비자 fixture에서 시설 수 0/1/4/8/12의 경계·중복·지형 도달성·높이를 검사했다.
BFS는 문/제거 가능한 장애물의 행동 접근을 허용하는 구조 검사이며, 전투에서의
생존 보장이 아니다. 봉쇄 물체는 별도 기록하도록 했지만 이 corpus에서는 0개였다.

| 적 | 생산 corpus 개체 수 |
|---|---:|
| 쥐 | 1,070 |
| 들개 | 611 |
| 늑대 | 483 |
| 멧돼지 | 625 |
| 거대 딱정벌레 | 594 |
| 동굴 도마뱀 | 434 |
| 거대 거미 | 529 |
| 거대 게 | 154 |

적 타입 검사는 생산 스폰을 선택한 뒤 인접 배치 및 마무리용 1 HP fixture를 사용한다.
명중/방어/공격 처리는 실제 production 경로지만, 그 승리를 자연 전투 균형으로 해석하지 않는다.

| 성능 (ms) | 평균 | p95 | 표본 |
|---|---:|---:|---:|
| 3지역 realization | 54.345 | 57.514 | 500 |
| save encode | 2.562 | 2.918 | 50 |
| 검증 및 load | 58.481 | 60.246 | 50 |

이는 이 PC의 headless 측정이며 HistoryEngine 생성 시간이나 지속 FPS 벤치마크가 아니다.

## 같은 Seed의 두 정책과 이전 평가 비교

정책은 전체 지형/물체 정보를 알고 cardinal A*로 이동한다. 매 이동과 상호작용은
실제 행동이며 teleport하지 않는다. 위험 회피형은 위험/적 주변 경로 비용을 높이고
현재 환경 목표를 우선한다. 회수 우선형은 역사적 물량을 의도적으로 추가 회수한다.
지능적인 인간 전투·탐색 전략의 대체물이 아니다. 원문 행동 증거는
`actions_<seed>_<policy>.json`에 있다. 로그 관찰자는 UI 128행 제한과 별도로 전체
행동/전투 수를 집계하며 게임 규칙을 바꾸지 않는다.

| 지표 | 합법/회피 | 회수 우선 |
|---|---:|---:|
| 생존 및 3지역/6목표/150칸 이상 완료 | 10/10 | 5/10 |
| 평균 이동 행동 | 479.3 | 619.9 |
| 평균 전체 플레이어 행동 | 495.8 | 638.9 |
| 평균 실제 방문 칸 | 445.8 | 453.0 |
| 평균 현장 목표 | 6.0 | 4.4 |
| 평균 발견 랜드마크 | 1.2 | 3.2 |
| 평균 최종 자재 | 18.0 | 23.7 |
| 역사 물량 추가 회수 / 남은 소유권 위반 총수 | 0 / 0 | 39 / 33 |
| NPC 공격 / 플레이어가 받은 전투 피해 총수 | 0 / 0 | 79 / 222 |
| 정확한 전체 save roundtrip | 10/10 | 10/10 |

| Seed | 회수 우선 결과 | 현장 목표 | 이동 | 최종 HP |
|---|---|---:|---:|---:|
| 1 | 사망 | 4 | 599 | 0 |
| 2 | 완료 | 6 | 841 | 30 |
| 7 | 사망 | 2 | 182 | 0 |
| 13 | 사망 | 4 | 559 | 0 |
| 42 | 사망 | 2 | 234 | 0 |
| 101 | 완료 | 6 | 945 | 9 |
| 321 | 완료 | 6 | 812 | 30 |
| 999 | 완료 | 6 | 901 | 16 |
| 1839602582 | 사망 | 2 | 243 | 0 |
| 1036007500 | 완료 | 6 | 883 | 22 |

원본 M048의 미커밋 평가에서는 위험 회피형 9/10이 보상 없이 출구를 지나갔으며
두 이동으로 세 지역 방문이 가능했다. 적극형 평균 111.5 이동, 47회 회수와
22회 배상에 집중했다. 이번에는 회피형도 채집→정보 효과→위험 제거→보급을
완료한다. 맵 면적은 기본 1,000→6,144칸, 약 6.14배다. 이동량은 늘었지만
약 480회의 이동이 재미있는지는 별도 사람 평가가 필요하다. 정책/맵이 달라
성능·승률의 통제된 전후 실험이라고 주장하지 않는다.

## GPU 시각 검수와 수정 기록

1. 첫 실제 GUI에서 넓은 격자 길과 과도한 풀 반복이 드러났다. [첫 맵](visual_iteration_1/map.png), [첫 플레이](visual_iteration_1/play.png)를 보존했다.
2. 외곽 길을 가늘고 불규칙한 순환길로 바꾸고 풀 밀도를 낮췄다. 나무 실루엣과 4종 실내 바닥, 경계 타일, 오브젝트 하단 색상 및 플레이어 대비를 정리했다. 작은 화면에서 인접 물체 설명·행동 안내를 진행 통계보다 앞에 배치했다.
3. 추가 시설 캡처가 캐릭터 창과 같다는 것을 이미지 검수로 발견했다. 자동 입력의 physical key만 설정해 Escape가 작동하지 않았던 테스트 결함이다. logical key도 설정하고 창 닫힘, 대기 시간 증가, 실제 저장 파일 내용 검증을 추가해 18장을 다시 촬영했다. 실제 사용자 키 입력을 처리하는 Character Screen 코드는 변경하지 않았다.

| Seed / 실제 지역 | 800×600 | 1152×648 | 1920×1080 | 추가 |
|---|---|---|---|---|
| 1 / locality_1 | [플레이](screenshots/1_800x600_exploration.png) | [플레이](screenshots/1_1152x648_exploration.png) | [플레이](screenshots/1_1920x1080_exploration.png) | [개요](screenshots/1_1920x1080_overview.png), [시설](screenshots/1_1920x1080_site.png), [캐릭터](screenshots/1_1920x1080_character.png) |
| 42 / locality_1 | [플레이](screenshots/42_800x600_exploration.png) | [플레이](screenshots/42_1152x648_exploration.png) | [플레이](screenshots/42_1920x1080_exploration.png) | [개요](screenshots/42_1920x1080_overview.png), [시설](screenshots/42_1920x1080_site.png), [캐릭터](screenshots/42_1920x1080_character.png) |
| 1839602582 / locality_2 | [플레이](screenshots/1839602582_800x600_exploration.png) | [플레이](screenshots/1839602582_1152x648_exploration.png) | [플레이](screenshots/1839602582_1920x1080_exploration.png) | [개요](screenshots/1839602582_1920x1080_overview.png), [시설](screenshots/1839602582_1920x1080_site.png), [캐릭터](screenshots/1839602582_1920x1080_character.png) |

정확한 zone/좌표/진행/renderer는 `captures_<seed>.json`이 권위다. 시설은 문/통로를
실제 행동으로 지나 도착했다. 기본 플레이 9장, 시설 3장, atlas, 개요와 캐릭터 화면을
직접 열어 픽셀 선명도·카메라·한글·물체 대비를 확인했다. 캡처는 Godot GPU viewport이며
렌더를 외부에서 합성하지 않았다. 미학적 최종 승인이나 전문가 픽셀아트 승인은 아니다.

## 보존·출처·남은 한계

원본 두 checkout은 수정하지 않았다. [보존 영수증](preservation.json): 기존 변경/
미추적 파일 14+16개 해시 일치, HEAD/status 일치. main은
`10f6f31cd39f165a7e04c658921056089eb794ef` 그대로다. 새 worktree에서 Godot가 만든
기존 EverRogue import sidecar는 커밋에서 제외하며 삭제하지 않는다.

아트 출처는 [atlas 문서](../../../assets/tilesets/exploration/README.md) 및
[THIRD_PARTY](../../../THIRD_PARTY.md). EverRogue CC0 여섯 silhouette 변형과
원본 코드 픽셀을 사용하며, 원본 이미지 파일은 수정하지 않았다.

**20–30분 사람 자유 탐험은 미실시다.** 자동 행동은 목표/보상/위험/이동 부담의
증거까지만 제공한다. 회수 우선 생존 50%, 낮은 회피형 랜드마크 발견 수,
넓은 빈 실내와 고정된 주 경로 목표 순서의 반복성은 후속 플레이 평가 대상이다.
적 애니메이션·안개·지속 aggro·배포 패키지/다른 GPU 검증은 포함하지 않았다.
새 자원은 재생하지 않으며 장기 경제/무한 탐험을 구현했다고 주장하지 않는다.

## 재현 명령

프로젝트 루트에서 `godot`를 설치된 4.7.2 실행 파일로 대체한다.

```sh
godot --headless --path . --script res://tests/test_exploration.gd
godot --headless --path . --script res://tests/test_exploration_encounters.gd
godot --headless --path . --script res://tools/analyze_exploration.gd -- --count=500
godot --headless --path . --script res://tools/evaluate_exploration.gd
godot --path . --rendering-method gl_compatibility --script res://tools/capture_exploration.gd -- --seed=1
# repeat captures with --seed=42 and --seed=1839602582
python tools/build_exploration_atlas.py --check
bash tools/check_godot.sh
```

검증기는 이 보고서 디렉터리에 결과를 출력한다. 이전 `corpus_5/100.json`은 중간 반복
증거이며 최종 수치는 `corpus_500.json`을 따른다.

## 최종 인계 기록

전체 `bash tools/check_godot.sh`가 exit 0으로 종료했다. 이후 추가한 시설 수 fixture
10개 검사는 focused 49/49로 별도 통과했다. 마지막 변경은 시체/플레이어 그리기
순서, 대기 키 안내 및 검증기 출력 경로 표현이다. editor import, 한국어 1,086개,
3 Seed의 GPU 18장, 경로/UID 검사를 다시 통과했다. [최종 targeted 로그](final-targeted.log).
핵심 생성/행동 규칙은 500-world corpus 이후 변경하지 않았다.

커밋 대상은 M049 구현·테스트·아트·문서·증거이며 생성된 기존 EverRogue sidecar는
제외했다. 전달 브랜치는 `codex/m049-playable-exploration-art`; 정확한 전달 SHA와
원격 일치 영수증은 로컬 `C:/GameDev/m049-work-record.md` 및 최종 응답에 기록한다.
로컬 main은 앞서 적은 SHA, push 전 관찰한 원격 main은
`e83da36818cbb23e69e4e16297ac4332885658f1`이다. 이 작업은 main을 변경/병합하지 않는다.
