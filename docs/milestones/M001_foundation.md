# M001 — Foundation and Basic Interaction Prototype

Status: Complete

## Goal

Establish a minimal playable Godot prototype and a repeatable validation workflow before building larger gameplay systems.

## Completed Scope

- Godot 4.7 project initialized and tracked with Git.
- Player implemented with `CharacterBody2D`.
- WASD and arrow-key movement configured through Input Map actions.
- Basic collision against room walls implemented.
- `Camera2D` follows the player.
- Basic interaction input mapped to `E`.
- Player-owned `InteractionDetector` detects nearby interactable `Area2D` nodes.
- Interactable objects expose an `interact()` method.
- Chest prototype confirms the interaction flow by printing `상자를 조사했다.`.
- Standard headless Godot validation workflow added.
- Automated basic interaction test added.

## Current Interaction Shape

```text
Player
├── Sprite2D
├── CollisionShape2D
├── Camera2D
└── InteractionDetector (Area2D)
    └── CollisionShape2D

InteractionDetector
    ↓ detects Area2D with interact()
Interactable
    └── interact()
```

The player owns input and target selection. Each interactable owns only its interaction behavior.

This is intentionally a small prototype architecture, not a final generalized interaction framework.

## Validation

Validated with Godot 4.7.2 Mono on the host machine:

- headless editor/project load succeeds
- main scene starts headlessly without reported errors
- `tests/test_basic_interaction.gd` passes
- manual in-editor play test confirmed movement, collision, and Chest interaction

Standard validation command:

```bash
bash tools/check_godot.sh
```

## Relevant Files

- `main.tscn`
- `player.gd`
- `chest.gd`
- `project.godot`
- `tools/check_godot.sh`
- `tests/test_basic_interaction.gd`

## Relevant Commits

- `2af736f` — `feat: add basic player interaction prototype`
- `af2c659` — `test: add headless Godot checks`

## Decisions to Carry Forward

- Keep interaction input and nearby-target selection on the player for now.
- Let interactable objects define their own `interact()` behavior.
- Do not introduce a larger interface/component framework until additional interaction types show a concrete need.
- Prefer automated headless validation for code/state behavior, while retaining manual checks for visual feel and editor-only behavior.

## Handoff / Next Milestone

The next useful milestone is expected to test whether the interaction shape remains useful for objects with state.

Candidate first feature: a Door that can be opened/closed through `interact()`, changes collision accordingly, and is covered by an automated state test.
