# New Game Project

Godot 기반 1인 개발 CRPG 프로토타입입니다.

Caves of Qud, Dwarf Fortress, RimWorld 등에서 시스템 설계 아이디어를 연구하되,
프로젝트 자체의 규칙과 구조로 재설계하는 것을 목표로 합니다. 현재는 완성된 게임이 아니라
시간·행동, 전투, 신체 부위, 전술 AI, 절차 생성, 시뮬레이션을 검증하는 단계입니다.

## Current state

현재 `main`에는 다음 기반이 통합되어 있습니다.

- 행동 비용 기반 시간 모델과 공통 Action 시스템
- 구조화된 전투 로그와 설명 가능한 전술 AI
- D20 기반 명중, 신체 부위, 부상, 1계층 방어구 실험
- 8방향 이동/근접 전투와 대각선 시간 비용
- 공통 Actor 구조와 다중 NPC
- 결정론적 지역 절차 생성 및 생성 맵 전투
- production 전투 규칙을 재사용하는 headless 배치 시뮬레이션

상세한 완료 상태와 앞으로의 작업은 다음 문서를 기준으로 확인합니다.

- [Roadmap](docs/ROADMAP.md)
- [Milestones](docs/MILESTONES.md)
- [Design decisions](docs/decisions/)
- [System wiki sources](docs/wiki/)
- [Detailed algorithm/spec documents](docs/specs/)
- [Monster and skill data catalogs](docs/datasets/)
- [External references](docs/REFERENCES.md)
- [Third-party notices](THIRD_PARTY.md)

사람이 읽기 위한 시스템 위키와 일일 개발일지는 별도의 Notion 프로젝트 위키에도 동기화하고 있으며,
Git 저장소의 코드와 `docs/` 문서를 구현 상태의 기준으로 사용합니다.

## Development

현재 개발 환경에서 Godot **4.7.2 Mono**로 자동 검증하고 있습니다.

전체 headless 검증:

```bash
bash tools/check_godot.sh
```

기본 실행 장면은 `scenes/debug/generated_map_combat_playground.tscn`입니다.

이 저장소는 실험적 프로토타입이므로 완료된 마일스톤의 동작과 아직 설계/후보 단계인 기능을
구분해서 문서화합니다.

## Project layout

```text
game/                   # Shared gameplay runtime
  actions/              # Common actions
  actors/               # Actor definitions, state and registry
  ai/                   # Tactical decisions
  combat/               # Combat/body/equipment rules and combat events
  ui/                   # Read-only Character Overview, inspectable rows and Inspector
  time/                 # Independent scheduler
  simulation/           # Headless production-combat adapters
  time_cost_game.gd      # Gameplay state/action/turn orchestration
  generated_map_combat_game.gd
worldgen/               # Map algorithms, generation settings and seed derivation
scenes/debug/           # Combat rooms, generated-map playground and map viewers
scenes/ui/              # Reusable Character Screen scene
prototypes/
  exploration/          # Original movement/interaction scene; viewer reuses Player
tests/                  # All existing automated tests and fixtures
tools/                  # Validation, batch and documentation tools
assets/
docs/
```

F5 still starts the generated-map combat playground. For F6, open
`scenes/debug/time_cost_test_room.tscn`. The original root `main.tscn` remains
available at `prototypes/exploration/main.tscn`; it is not the configured main scene.
The old M010 3-AP comparison room is retired from active source; the original experiment remains documented in `docs/milestones/M010_micro_ap_test_room.md` and Git history.

In the combat scenes, C opens the Character Overview; C/Esc closes it. Hover values
for quick explanations, then click or Tab+Enter for Inspector sources. Gameplay
inputs are blocked while the screen is open. See [M032](docs/milestones/M032_character_overview.md).

This folder change preserves class names, APIs, algorithms and content values.
Future authored gameplay resources belong under `content/`; that directory is not
created empty and this branch does not implement the separate single-source work.
See [M030](docs/milestones/M030_project_folder_structure.md) and the
[exact move map](docs/reviews/2026-09-29-folder-moves.json).

## Third-party material and references

저장소에 실제로 포함된 외부 에셋이나 코드의 출처와 라이선스는
[THIRD_PARTY.md](THIRD_PARTY.md)에 기록합니다.

코드를 포함하지 않고 설계나 알고리즘 연구에 참고한 외부 프로젝트는
[docs/REFERENCES.md](docs/REFERENCES.md)에 별도로 기록합니다.

## License

**이 저장소가 공개되어 있다는 사실 자체가 이 프로젝트의 원본 코드나 원본 에셋에 대한
사용·수정·재배포 라이선스를 부여하지는 않습니다.**

별도로 명시된 경우를 제외하면, 이 프로젝트의 원본 코드와 원본 콘텐츠에 대해 현재 별도의
오픈소스 라이선스는 부여하지 않습니다.

제3자 자료는 각각의 원 라이선스를 따릅니다. 자세한 내용은
[THIRD_PARTY.md](THIRD_PARTY.md)를 확인하세요.
