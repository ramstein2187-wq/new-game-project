# Common Actor ownership (M019)

Accepted on the M019 task branch, 2026-09-22. [Specification](../designs/M019_common_actor_spec.md), [milestone](../milestones/M019_common_actor.md).

## Ownership and responsibilities

| Object | Owns | Does not own |
| --- | --- | --- |
| `ActorDefinition` Resource | Content defaults: type/name, species template, HP, initial abilities/points, base action costs, AI policy and aggression | Live health, injuries, position or ready times |
| `Actor` RefCounted | Stable ID, name, position/facing, HP/max HP, independent AbilityScores and BodyInstance, species tuning copy, AI policy/target/aggression/fear bonus | Scheduler clock |
| `ActorRegistry` | ID lookup, stable insertion iteration, live occupancy, registration/removal | Actions, terrain, time |
| `TimeScheduler` | World time, per-ID ready times and stable priority | Actor instances, species or AI |
| `TimeCostGame` | Lifecycle coordination between registry/scheduler, terrain, action execution, combat RNG and events | Duplicate per-NPC state |

Definitions are shared content prototypes and treated as immutable during play. Each Actor copies abilities and constructs its own BodyInstance. `CombatSpecies.duplicate(true)` is an intentional per-instance tuning copy: historical debug/test fixtures change attack ability and penetration. Those changes must not modify shared definitions or sibling NPCs. It owns no additional HP or body integrity.

Player and NPC share the same model. Player input selects Actions for the reserved `player` ID. A scheduled NPC is dispatched by its own `ai_policy`, not its ID/species name. `rat_tactics` reevaluates its own target, HP-derived fear, aggression and body; unknown policies or absent/dead targets select a legitimate WaitAction. Future policies can be registered when actual new behavior is needed; no controller/faction framework was added.

## Lifecycle and failure behavior

- Normal creation/removal goes through `TimeCostGame.register_actor/remove_actor`; validate ID, definition, alive state, terrain, occupancy and ready time. Roll back registry insertion if scheduler registration fails. Runtime additions start at current world time unless an explicit valid ready time is supplied.
- Initial player registration is the reserved bootstrap path: scheduler reset registers `player`, then the model constructs its matching Actor. Fixed-room setup creates one rat; configured generated setup creates its validated spawn list.
- `damage_actor` clamps HP at zero. Dead NPCs stay in the registry with their body but leave scheduling and occupancy. Removing a live or dead NPC removes its schedule if present. Player death ends input/AI progression; explicit player removal is unsupported.
- There is no cached occupancy grid: queries inspect live Actor positions, avoiding stale indexes after debug fixture placement. Supported movement uses Actions and `set_actor_position`, which rejects collisions. Direct Actor/legacy setters are prototype fixture/debug access, not a substitute for game lifecycle APIs.
- Unexpected NPC execution failure records `simulation_error`, reports it and stops further input/processing until reset. It does not invent a recovery cost or repeatedly retry. Legitimate lack of movement/attack options is handled by the planner's Wait candidate.

## Preserved rules and deliberate changes

No combat balance or design principle changed. D20 evaluation, body selection/armor RNG order, damage 5, HP 50/30, attack 1250/1000, cardinal 1000/750, diagonal 1400/1050, interaction 500 and wait 1000 remain. Injury efficiency is applied once to movement. Existing player-priority ties and stable NPC registration ties are unchanged; scheduler code is untouched.

AI routing remains deterministic shortest-step BFS, now excluding other live occupants except the target. Terrain, closed-door interaction and diagonal corner rules remain unchanged. Occupied flanks do not create a new diagonal corner rule. There is no coordinated NPC routing or cost-aware path optimization.

Generated terrain and first player/rat spawns are unchanged. Additional NPC cells come from deterministic cardinal BFS starting at the original rat spawn, excluding the player. Selection uses no RNG. Only the staged connected layout is committed. Default is three NPCs; small valid maps use all available distinct cells, possibly fewer. `configure(rows, 1)` preserves explicit historical single-NPC scenarios. Reset recreates the configured roster, bodies, traits and schedule.

## Compatibility and presentation

`player_position`, `rat_position`, HP/facing/trait accessors forward to Actors. `abilities`, `species`, `bodies` are fresh lookup views referencing the Actors' owned objects; replacing dictionary entries is unsupported. Existing object-member mutation fixtures continue to work. `rat_next_ready_time`, `get_rat_fear`, `_next_step_toward_player` remain first-rat compatibility helpers. Production Actions, AI and scene actor loops use arbitrary IDs. Remove these adapters when old fixture/caller migration is separately justified.

Events retain real actor/target IDs and captured display names. Player logs show observable moves/retreats/attacks and distinguish numbered NPCs; F3 exposes existing internal reasons/scores. The fully visible prototype observation model is retained, not a new perception system. Both scenes render registry contents; generated NPC markers 1–3 correspond to status/body labels. Dead NPCs disappear from the map and remain in the status list; no corpse interaction was introduced.

Follow-ups remain on the roadmap: inventory/equipment, factions/companions/controllers, generic statuses, world/save persistence, perception and target memory, species content, action animation. Current presentation targets 1152×648 and three NPCs; larger rosters require a scrollable/selectable inspection UI. Encounter balance with three rats needs manual play feedback.
