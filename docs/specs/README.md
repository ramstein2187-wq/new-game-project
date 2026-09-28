# Detailed System Specifications

이 디렉터리는 시스템 위키보다 한 단계 깊은 **구현 상세**를 기록한다.

- `docs/wiki/`: 무엇이 구현되어 있는지 빠르게 보는 현재 상태 요약.
- `docs/specs/`: 알고리즘, 처리 순서, 계산식, 상태 전이, 예시와 코드 위치.
- `docs/datasets/`: 몬스터·스킬·신체·장비·상태/특성·Threat 측정 같은 콘텐츠/밸런스 수치 카탈로그.

각 spec은 TOML front matter를 가지며 `docs/diagrams/`의 SVG를 본문에 포함한다.
Git이 원본이고 Notion의 **상세 설계** 데이터베이스는 자동 미러다.

알고리즘이나 핵심 수치가 바뀌면 관련 코드와 같은 작업에서 spec/diagram도 갱신한다.
