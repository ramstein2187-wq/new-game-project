# World Persistence and Inactive-Zone Simulation — Design v0.1

Status: **design decision / not implemented**. Date: 2026-09-21. This document records decisions from the CRPG design discussion, not a claim about Caves of Qud or RimWorld internals.

## Goals and boundaries

- Make meaningful consequences of exploration persist without simulating the entire world at tile/action granularity.
- Keep world identity, entity ownership, causal event order, and observable player-facing consequences coherent across zone transitions and saves.
- Separate **where a change happened** (site/zone policy) from **what the changed object is** (entity policy). A wilderness zone must not erase a unique NPC, quest item, player construction, or consequential event.
- The initial implementation should be a small reversible prototype. No full economy, offline tactical combat, faction war, or generalized NPC world simulation is approved by this document.

## Decision: spatial and content models

- **Candidate spatial hierarchy:** World -> Sector -> Zone -> cells/entities. A Zone is the unit of detailed play and potential freeze/restore. A Sector is a world-map address containing one or more zones.
- **Site is content, not a mandatory intervening grid level.** A village, ruin, or dungeon may occupy one or multiple zones; biomes and faction influence may span many sectors/zones.
- **Unresolved:** world-map dimensions, sectors-per-world, zones-per-sector, zone dimensions, transitions between adjacent zones, underground layers, and fast travel. Earlier 30x20/3x3/64x40 and later 12x12/3x3/64x64 were proposals, not agreed final sizes.
- Use stable world/sector/zone/site identifiers. Keep world-map travel and direct zone traversal tied to the same world entities; do not duplicate a site based on entry method.

## Decision: independent persistence policies

- **Major sites** (towns, significant ruins/dungeons, story locations): preserve consequential changes such as destroyed structures, doors/chests, quest progression, named-NPC deaths, and unique item movement until explicit in-world repair/replacement rules change them.
- **Ordinary wilderness:** deterministic baseline terrain may be regenerated; renewable plants/resources, ambient traces, and ordinary populations may recover or respawn by explicit rules. Preserve consequential changes regardless of wilderness classification (e.g., a built house, named NPC death, unique loot, a quest-altered ruin).
- **Temporary encounter sites:** detailed instance data may be discarded after resolution, but durable consequences must first be transferred to persistent world/entity state.
- Site policy provides defaults only. Terrain objects and entities carry policy/rules appropriate to their significance. 'Permanent' does not mean natural vegetation can never regrow.

## Decision: persistence by data category

### Terrain and structures

- Reconstruct an unchanged zone from a deterministic seed/coordinate/generation configuration; apply **current overrides** to changed cells/objects instead of storing an unbounded edit history.
- Store an object's stable identity/location when needed, its present state, modification time, and an optional next eligible regeneration time. Remove or compact expired overrides only after verifying no durable consequence is lost.
- Permanent structural edits persist until explicit repair/rebuild/demolition. Renewable terrain may recover, but must not silently overwrite player construction or unique site state.
- An optimization to store dense edited zones as snapshots is **deferred** until profiling shows a benefit.

### NPCs and world entities

- **Persistent NPCs:** retain a stable global ID, alive/dead state, location or journey state, affiliation/relations as needed, quest-relevant facts, and owned items. Do not instantiate two copies when changing zones.
- **Regional NPCs:** may have region-owned aggregate schedules/population state; promote an individual to persistent identity when the player or a quest creates durable significance. Exact promotion triggers are unresolved.
- **Transient NPCs/wildlife:** an ordinary population can be modeled in aggregate; do not retain every disposable creature forever. Do not regenerate a uniquely killed or promoted creature as a fresh copy.
- Tactical candidate evaluation, pathfinding, individual movement and combat run only for active actors. Inactive NPCs may have a **limited world-level** itinerary/event, not continuously simulated individual actions.

### Items and ownership

- Distinguish reusable item **definitions** from individual **instances** when unique identity, durability, quest state, player possession, or other changed state requires it.
- Each persistent item instance has exactly one authoritative container/holder/world position at a time; zone caches hold references, not independent authoritative copies.
- Unique/quest items and significant dropped possessions persist even in wilderness. Generic renewable loot and ambient clutter may expire by explicit, player-legible rules; do not assume every dropped item can be deleted merely because its zone is wilderness.
- Looted chests/defeated bosses must not regenerate unique rewards. Ordinary stock restocking is a separate rule from restoring original inventory.

## Decision: one clock, selective computation

- Keep one canonical **world time** shared across tactical actions, journeys, region updates, and saves. The M011/M013 action-cost scheduler is an existing *experimental branch* design; integration with world time, tick units and time-of-day is not implemented or finalized here. Do not introduce an independently drifting clock for inactive zones.
- **ACTIVE:** current zone runs detailed actions via its scheduler. Loading a neighboring zone for presentation does not automatically activate every NPC's AI.
- **FROZEN:** on exit, capture authoritative current state and stop per-actor tactical actions. On re-entry, restore it, settle relevant world events and elapsed-time effects up to the world time, then resume detailed actions. Freeze is not a reset.
- **BACKGROUND WORLD EVENTS:** only consequential, explicitly modeled cross-zone events (e.g., named NPC journey arrival, quest deadline, settlement event) continue while zones are frozen. Their scheduled timestamps determine ordering.
- **LAZY EFFECTS:** resource regrowth, expiry, schedule-derived placement, and similar time-computable results are evaluated from stored times on demand without replaying every elapsed action/tick.
- Resolve same-time event ordering and active-zone handoff before admitting player actions; use stable deterministic tie-breaking. Each effect has one authoritative owner so a world event and lazy update cannot apply the same effect twice. Store each zone's last *committed* update time and processed event identity/watermark when applicable.
- Large catch-up windows must not replay thousands of generic daily updates. Coalesce aggregate work; preserve order for consequential dependent events. Do not expose partially reconciled zone state to gameplay.

## Save / restore contract (target architecture, not existing code)

- **World header:** save-schema version; world seed; terrain/seed-derivation generation version; canonical world time; player location and state.
- **World state:** global events (pending and consequential completed facts), unique entities and item ownership, cross-zone journeys, faction/story state as later required.
- **Zone/site state:** stable location ID; persistence-policy ID; last committed update time; current cell/object overrides; region population/renewal state; references to globally owned entities.
- A baseline generated from the seed is NOT a substitute for runtime changes. Record sufficient location/ownership/processed-event metadata to prevent resurrection, duplication, and double application on load or revisit.
- Generate with a stable seed namespace derived from world seed and location (see `docs/decisions/seed_derivation.md`); changing a generator/deriver requires version pinning or a migration plan. A saved building must not shift or vanish merely because the generator changed.
- Save/load must produce the same authoritative world state, not create a new instance of the same item/NPC. File format, autosave transaction boundaries, per-zone file partitioning, and snapshot-vs-diff thresholds remain implementation choices.

## Performance constraints and observability

- Never traverse/update every world zone and individual NPC on each player action. Keep detailed AI/simulation scope bounded to active areas; use due-event lookup for consequential background events.
- Unvisited/default zones need not have a full saved tile array or live Godot scene. Release detailed nodes and pathfinding data for frozen zones when no longer needed, subject to measured cache policy.
- Profile zone generation, freeze/restore, catch-up duration, AI turn cost, save size/time, and memory across repeated revisits and long elapsed periods. Don't claim scalability based only on map dimensions.
- Preserve consequential *player-observable* causes/effects in appropriate logs or world feedback without exposing hidden AI reasoning indiscriminately (see `docs/decisions/explainable_systemic_behavior.md`).

## Suggested first prototype — NOT started

Use three small connected zones (one persistent village, one regenerative wilderness, one persistent ruin), reusing the existing M003–M009 generated map where possible. Demonstrate: opening/looting a chest; harvesting a renewable resource; removing a significant enemy; exiting and advancing world time; revisiting; save/load; no duplication of unique entities or rewards. Measure restore/save latency and file growth. Keep tactical scheduling and world events minimal and explicit in the first version.

## Outstanding decisions before implementation

1. Select sector/zone dimensions and whether sites span zones; define zone edge continuity and transition semantics.
2. Define clock units, elapsed-time rules, deterministic equal-time event order, and handoff between active scheduler and global events.
3. Specify renewable resource timing, drop retention, individual NPC promotion, site activation, and world event scope.
4. Choose authoritative entity/ownership indices, save transaction/recovery semantics, generator-version compatibility, and versioned save format.
5. Identify initial tests and acceptable measured performance budgets rather than assuming an unprofiled optimization is needed.

## Implementation status / related documents

- `main`: M001 and M003–M009 cover foundational movement and a playable generated map; **no multi-zone persistence or background simulation is claimed**.
- On experimental branches, M011–M015 contain time-cost scheduling, shared actions, combat logs, and rat AI with automated validation recorded and manual/integration checks pending; **not merged into `main`**.
- Refer to `docs/ROADMAP.md`, `docs/MILESTONES.md`, `docs/decisions/seed_derivation.md`, and `docs/decisions/turn_time_model.md` before designing the implementation milestone.
