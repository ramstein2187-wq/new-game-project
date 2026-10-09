+++
status = "구현 완료 — M048 후속 작업 브랜치"
areas = ["UI/로그"]
milestones = "M048 한국어 현지화 기반"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/codex/m048-korean-playtest-localization/docs/decisions/localization_and_text_authoring.md"
icon = "🌐"
+++
# 한국어 우선 현지화

M048 전용 씬은 `codex/m048-korean-playtest-localization`에서 한국어를 기본으로 표시한다. main 미통합.

- 번역 권위는 `locale/ko.po`의 전체 문장과 term 문맥 용어다. 영어 원문은 코드와 messages.pot에 보존한다. Godot 4.7.2의 native PO, TranslationServer, Control 자동 번역, 문맥·복수형 API를 검증했다.
- GameText는 자원·수량·시설·소유 세력·현재 필요·사업·흔적·현장 기록·결과·전투 로그를 표시한다. Character Overview는 기존 query의 최종값과 계산 단계만 렌더링한다. F3는 원시 진단을 유지한다.
- 번역 결과를 역사·Manifest·판정·시간·RNG·보관권·Actor·저장 schema에 쓰지 않는다. 기존 CombatEvent의 영어 result는 유지하고 semantic 코드/인수를 추가한다.
- 실제 GeneratedName이 주어지면 M035 NameRenderer에 위임한다. 현 엔티티에는 해당 필드가 없어 지역/공동체 번호 및 알려진 prototype 표시명을 사용한다. 새 이름 생성·음역·저장 변경은 없다.
- 기원·의도·고대 기계 원리는 근거가 없으면 미확정이다. 기록은 실제 조사·회수한 현장 정보만 표시한다.
- 번들 Noto Sans KR 2.004 (SIL OFL 1.1), 줄바꿈·스크롤, 기존 물리 단축키를 사용한다. 언어 선호는 세계 저장과 별도인 `user://presentation.cfg`에 둔다. 언어 메뉴는 없으며 영어는 개발용 원문 fallback이다.

GPU 렌더 여섯 화면을 1152×648, 1920×1080, 800×600에서 확인했다. OS 한글 IME 입력·사람의 최종 문체 검토·export package는 별도 수동 검증이다.

[설계 결정](../decisions/localization_and_text_authoring.md) · [후속 기록](../milestones/M048_korean_localization_followup.md) · [검증 보고서](../reviews/m048_korean_localization/report.md)
