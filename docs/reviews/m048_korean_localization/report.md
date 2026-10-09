# M048 한국어 현지화 후속 검증

작업 브랜치: `codex/m048-korean-playtest-localization`. 기준 `4856655269f7a49313ba9bbda58eaa3e594cfed6`.
시작 시 원격 현지화 설계 HEAD가 기준과 일치함을 확인했다. M048 원격은 `3f7473c`, main은 `e83da36`이었다.
기존 primary 및 Phase C checkout은 수정하지 않았다. main 미병합.

## 구현 범위와 표시 경계

- M048 기본 화면, 안내·결과·실패 이유, 물자/수량, 시설 상태/현지 용도, 소유 공동체/현재 필요, 사업/흔적, 실제 발견한 기록, 전투 로그와 Character Overview를 한국어로 표시한다.
- native PO와 TranslationServer, Control 자동 번역/tr(), term 문맥, native plural, named String.format을 사용한다. 영어 원문/POT는 유지한다. 별도 LocalizationManager/autoload는 없다.
- transient notice의 의미 코드/인수를 UI가 렌더링한다. Interaction CombatEvent의 기존 영어 result는 그대로 두고 result_code/result_args/custody_violation을 추가했다. 로그 필드에는 한국어를 저장하지 않는다. 일반 UI에 raw Dictionary/ID를 노출하지 않으며, F3는 원시 진단을 유지한다.
- HistoryEngine/Manifest/Realization, Actor codec/RuntimeSave schema, 비용·판정 순서·AI·행동 실행·시간·RNG·보관권은 유지했다. 이전 저장을 재생성 없이 복원한다. decoder/Actor codec 오류 자체는 개발 진단으로 두고 일반 UI는 한국어 저장 오류를 안내한다.
- 표시 선호 `user://presentation.cfg`는 World Save와 별개다. 기본 ko, 개발용 en source fallback API가 있으며 언어 메뉴는 없다. locale 변경 시 현재 UI만 갱신한다.
- 현 Actor/Locality/Site/Faction에는 GeneratedName이 없다. 가짜 이름을 생성하지 않고 지역/공동체 번호와 알려진 prototype 표시명을 사용했다. GameText.name은 실제 canonical name을 받을 때 기존 M035 NameRenderer에 위임하며, canonical fixture로 순수 렌더를 검증했다.
- 미지의 기원·전체 원인·작동 주체의 의도와 고대 기계 기능은 미확정으로 유지한다. 기록은 습득한 현장 정보만 보여준다.
- container 배치, 줄바꿈, 별도 설명/기록 스크롤, 작은 Character 화면의 세로 배치와 Inspector 자동 스크롤을 적용했다. 기존 단축키는 유지하고 physical_keycode를 우선 읽는다.

## 폰트 출처와 라이선스

[Noto Sans KR Regular 2.004 upstream](https://github.com/notofonts/noto-cjk/tree/Sans2.004/Sans/SubsetOTF/KR)의 변경 없는 Korean subset OTF를 포함했다.
[SIL Open Font License 1.1](https://github.com/notofonts/noto-cjk/blob/Sans2.004/LICENSE)은 소프트웨어와 함께 배포를 허용한다. full license와 Adobe © 2014–2021 내장 고지, 정확한 출처/해시를 `assets/fonts/noto-sans-kr/` 및 THIRD_PARTY.md에 보존했다.
OTF SHA256: `69975a0ac8472717870aefeab0a4d52739308d90856b9955313b2ad5e0148d68`.
한글 범위 및 혼합 문자 렌더를 확인했다. 외부 PC 시스템 폰트만 의존하지 않는다.

## 자동 검증

| 검사 | 결과 |
| --- | --- |
| 기존 Phase C 통합 | 613 checks PASS |
| 기존 Character Screen 입력/Inspector/배치 | 284 assertions PASS; 원래 영어 exact-layout 검증은 locale=en을 명시해 보존 |
| 새 현지화 집중 | 932 checks PASS |
| 번역 | 모든 PO 항목 실제 native 로드/일치, source-term/notice 누락, placeholder 집합, 동적 문장·수량·상태·용어 검사 |
| 표시와 상태 분리 | en/ko 동일 실행의 전체 저장과 raw 이벤트 동일; 실제 전투/RNG, Actor 효과/피해, 물건 소유권, 지역 이동, save/load 보존 |
| UI | live locale refresh가 save/RNG를 바꾸지 않음; 일반 UI의 영어 문장/raw ID 검출, 3해상도 한글 caption 폭 검사 |
| 세계 corpus | 500 worlds / 1,500 zones; 0 failures / 0 unintended unreachable. timing 제외 모든 집계가 기존 M048 stats_500.json과 정확히 일치 |
| 전체 최종 gate | PASS: bash tools/check_godot.sh; editor import/parse, main startup, 기존 42 + 현지화 1 = 43 scripts, combat dataset freshness. 최종 로그: C:\GameDev\m048-ko-full-final.log |

v2–v5 및 v6 A/B, Phase C Golden/Save 검증은 삭제하거나 완화하지 않았다. 공식 combat exporter를 실행했으며 생성 데이터 변경은 없었다.
corpus 결과는 `.godot/korean-playtest-captures/stats_500.json`에 보관하며, 기존 통계를 덮어쓰지 않도록 tool에 optional --output만 추가했다.

## 실제 Godot 렌더

Godot 4.7.2 / OpenGL compatibility / NVIDIA GeForce RTX 5070 Ti.
`tools/capture_korean_playtest.gd`로 **6화면 × 3해상도 = 18개**를 실제 GPU에서 캡처했다.
1152×648, 1920×1080, 800×600을 눈으로 확인했고 한글 누락·열 겹침·가로 잘림을 수정했다.
긴 기록은 스크롤로 읽도록 의도적으로 panel 범위 안에서 잘린다. 작은 Character 화면은 세로 배치 후 Inspector로 이동한다.
단축키 dispatch, logical code가 다른 physical S, physical C, modal/focused seed 차단, F5/F9 byte-equal 복원을 실제 scene에서 검증했다.
이는 OS IME 활성 상태에서 사람이 키보드로 입력한 검증은 아니다.

| 화면 | 보존한 실제 캡처 |
| --- | --- |
| 기본 플레이 | [basic](basic.png) |
| 한국어 회수·소유권 결과 | [action](action.png) |
| 시설/현장 설명 | [long description](long_description.png) |
| 기록 패널과 스크롤 | [records](records.png) |
| Character Overview / Inspector | [character](character.png), [800×600](character_small.png) |
| 저장·불러오기 안내 | [save/load](save_load.png) |

[captures.json](captures.json)은 18개 캡처 메타데이터와 failures=[], native_ime=not performed를 보존한다.
전체 원본 캡처는 `.godot/korean-playtest-captures/`에 있으며 tool로 재생성한다. 기본/긴 기록은 실제 seed1839602582, 회수 결과는 기존 Phase C와 동일한 명시적 synthetic fixture22다. 역사 문장을 임의로 반복하거나 발명하지 않았다.

## 남은 수동 검증과 장기 범위

- 한글 IME를 켜고 WASD/숫자패드/E/G/X/P 등 실제 키 입력과 seed 편집을 확인한다.
- 원어민 사용자의 전체 문체·용어·20–30분 플레이 재미/가독성 승인은 자동 검증과 별개다.
- export/package에서 폰트·PO·라이선스 포함은 아직 검증하지 않았다.
- 모든 다른 debug 씬/미래 콘텐츠, 풍부한 효과/출처 이름, 모든 역사 문장, 실제 canonical name binding, 완성된 영어·언어 메뉴는 후속이다.
- main 통합과 Notion live mirror는 수행하지 않았다. 기존 Git 자동 동기화 규칙을 따른다.

## Git 인계와 재개

변경 파일을 감사했으며 구현·번역·폰트·검증·문서만 commit/push 대상으로 지정했다. 새 worktree의 기존 EverRogue import 12개는 staging에서 제외한다.
기존 primary 14개와 Phase C checkout 13개, 총 27개의 수정/미추적 파일 SHA256 및 두 checkout의 HEAD/branch를 대조하여 보존을 확인했다.
원본 보존 기준은 `C:\GameDev\m048-localization-preservation-before.json`이다.
최종 branch/commit/remote SHA 및 보존 결과는 `C:\GameDev\m048-korean-localization-handoff.md`에 기록한다.
