+++
status = "구현 완료"
areas = ["코어", "월드 생성"]
milestones = "M035 — codex/procedural-naming-v1; main 미병합"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/procedural-naming-v1/docs/specs/procedural_naming.md"
icon = "🔤"
+++
# 절차적 고유명사 생성

## 현재 구현

M035 task branch의 독립 Naming Foundation이다. NPC/게임 UI에는 아직 연결하지
않았다. 언어가 바뀌어도 같은 canonical identity를 유지한다.

`GeneratedName`은 naming version, culture, name type, template와 slot별 phonetic
token/semantic token/정수를 저장한다. 최종 영어 문자열은 원본 데이터가 아니다.
`NameGenerator.generate(seed, stable_key, culture, type)`과
`NameRenderer.render(generated, locale)`를 분리했다. renderer는 canonical을
수정하지 않는다. phonetic은 원본 token의 언어별 표기를 직접 조합하며 영어를
한글로 재음역하지 않는다. semantic은 의미를 번역하고 mixed는 locale grammar로
조합한다. en/ko와 소유격/어순 template, 관리자 시설 번호를 지원한다.

| Canonical 예 | EN | KO |
| --- | --- | --- |
| phonetic vei + ra | Veyra | 베이라 |
| ASHEN + REACH | Ashen Reach | 잿빛 변경 |
| proper + GATE, possessive_feature | Veyra's Gate | 베이라의 관문 |
| BIOLOGICAL + PRESERVATION + ARRAY + 74 | Biological Preservation Array 74 | 생물 보존 배열체 74 |

## 데이터와 결정론

`content/naming/`의 native `.tres`가 authority다. `prototype_surface`와
`administrator`는 모두 기능 검증용이며 최종 lore가 아니다. 24 phonetic
component, 14 semantic token, 6 grammar는 직접 작성한 합성 데이터다. 외부 이름
DB/목록/네트워크 의존성은 없다. 작은 locale mapping에 표기/template를 추가해
언어를 확장하며 전체 게임 localization framework를 도입하지 않았다.

기존 SeedDeriver 알고리즘을 그대로 사용하고 naming version 1의 namespace에서
template/slot/token/number/attempt seed를 각각 분리한다. 다른 procedural RNG
호출 수가 이름을 바꾸지 않는다. version과 content가 같을 때 동일 입력은 같은
canonical을 생성한다. grammar/pool 변경은 이름을 바꿀 수 있어 future save는
canonical 저장 또는 version/content 고정·명시적 migration이 필요하다.

## 검증과 한계

Catalog는 시작 때 검증한 별도 snapshot/index를 소유한다. 잘못된 ID/reference,
누락 locale, malformed template/canonical, invalid number는 거부한다. reserved
canonical/display 입력은 locale 전체에 적용하고 결정론적 재시도는 최대 32회다.
전역 유일성 registry는 없다. fixed-seed preview 및 6,000개 자동 샘플은 기능과
기본 variation을 확인하며 언어학적 자연스러움이나 최종 세계관 품질을 보증하지
않는다. 게임 localization/언어 UI/폰트, NPC·village·faction integration, save/load,
대규모 문화 데이터는 별도 범위다. Notion은 향후 main merge 후 자동 동기화하는
derived 읽기 surface이며 Git 문서가 원본이다.

[설계 및 API](../specs/procedural_naming.md),
[결정](../decisions/procedural_naming.md),
[마일스톤과 검증](../milestones/M035_procedural_naming_v1.md).
