# Player Experience First — World, Systems, Story

## Status and authority

**Accepted project-wide design decision.** This is a governing principle for history generation, world generation, combat, progression, factions, encounters, UI, and content authoring. It is **not** a claim that any particular gameplay integration has already shipped.

> **History creates the world. Systems create possibilities. The player creates the story.**
>
> **역사가 세계를 만들고, 시스템이 가능성을 만들며, 플레이어가 이야기를 만든다.**

The game's central concern remains:

> **이 기묘한 세계에서 어떻게 살아갈 것인가, 그리고 그 과정에서 어떤 존재가 될 것인가.**

History, simulation, lore, and procedural complexity are instruments for that player experience, not ends in themselves.

## 1. The player is not required to be an archaeologist

The world may be ancient, layered, mysterious, and richly documented. The player character is first a being trying to **survive, explore, act, grow, negotiate, choose, and continue** in that world.

- A place should be worth visiting for current-world reasons (danger, opportunity, travel, encounter, shelter, resources, trade, discovery, or meaningful atmosphere) even when the player ignores its history.
- Historical investigation is a valid play style, **never the mandatory default play style**. Knowledge may give alternative routes, leverage, safer methods, new techniques, or additional meaning.
- Lore is not a toll booth: do not require reading archives or completing detective sequences as the routine price of forward progress.
- Optional mystery and pure wonder are valid, including unsolved questions. They should not falsely promise a practical reward or consume disproportionate mandatory player time.
- Do not turn every historical event into a quest, every Trace into a collectible, or every Question into a checklist.

**The test:** Can a player who never opens a historical dossier still encounter a compelling reason to move, take a risk, make a decision, and return to the world? Does learning history enrich rather than replace those actions?

## 2. Gameplay loops, not document volume, drive development

Protect three overlapping scales of forward momentum:

| Scale | Typical player question | Primary experience |
| --- | --- | --- |
| Immediate | What is beyond this door? Can I get past this threat? | Movement, tactics, readable hazards, moment-to-moment discovery |
| Expedition | What can I gain, reach, trade, change, or prepare for next? | Exploration, recovery, resource and faction decisions, new capabilities |
| Long-term identity | How should I live here, and what kind of being am I becoming? | Meaningful body/trait/skill/equipment changes, allegiance, lasting choices |

A system earns priority when it makes at least one of these loops measurably richer. Avoid solving a lore-density problem with more text, or a procedural-variety problem with more near-identical action labels.

**Player agency beats authorial closure:** the game need not explain every historical cause, settle every mystery, or assign every action a prescribed moral lesson.

## 3. The role of history

**History conditions the present; it does not prescribe the player's story.**

Historical facts and their sparse causal relations can shape:

- geography, sites, access, traversability, hazards, and inhabitants
- factions, ownership, institutions, relationships, and current needs
- available items, machines, techniques, materials, and knowledge
- opportunities, conflicts, constraints, surprises, and optional mysteries

Then **current gameplay systems** determine what happens when the player interacts with those conditions. Prefer world affordances and systemic consequences over a sequence of prewritten lore-delivery tasks.

A Project, Scar, or political event need not spawn a standalone investigation. One historic ruin can become shelter, obstacle, salvage site, trade asset, monster habitat, faction flashpoint, or mystery depending on the world and the player's decisions.

Maintain the boundary between **what historically happened**, **what might have survived**, **what currently exists and can be used**, and **what people believe**. Do not infer a surviving machine or physical relic from a merely related history record. Keep unknown historical causes unknown unless genuinely established by canon.

## 4. Every important feature needs a player-facing purpose

Before adding substantial complexity, answer:

1. **Player motivation:** Why would someone approach this place, object, actor, or opportunity without being assigned a lore quest?
2. **Available verbs:** What can the player actually do, with the existing or explicitly planned movement, combat, interaction, body, equipment, knowledge, or social systems?
3. **Tension and alternatives:** What risk, cost, tradeoff, obstacle, or interesting choice distinguishes it from generic content?
4. **Feedback:** What will the player perceive that lets them understand the situation and react?
5. **Consequence:** What new access, capability, resource, relationship, knowledge, world state, or personal transformation might follow?
6. **Forward momentum:** What next action or curiosity becomes inviting afterward?

Not every minor object must satisfy all six questions. A quiet place can exist for atmosphere alone. But features consuming significant engineering or player attention should have clear answers to several of them.

**More definitions, more generated text, more history records, more hooks, and more statistics are not by themselves more fun.** Different content must create observably different encounters, decisions, and outcomes.

## 5. System-specific applications

### History / archaeology

- Historical Traces and Questions are **optional lenses on a living world**, not the main quest structure.
- Prefer a recovered device that can be sold, installed, broken, studied, or fought over to five documents that all deliver similar information.
- Evidence can change actionable understanding, but do not fabricate current physical artifacts without appropriate existence and survival provenance.
- Preserve sparse historical causality and space for interpretation; avoid forcing every social practice, faction motive, or present conflict into a full explanatory chain.

### World generation / exploration

- Generate traversable locations, resource tradeoffs, navigational intrigue, hazards, shelter, and contextual opportunities; historical meaning can deepen them.
- Let the same historical cause contribute to different environmental experiences, not just a different label over an identical map.
- Do not use lore reading to substitute for an interesting site layout or encounter.

### Combat / AI / interaction

- Encounters should be readable and manipulable: approach, avoidance, negotiation, terrain, timing, injury, equipment, and faction relations can matter where appropriate.
- Avoid pretending a list of interaction tags constitutes gameplay. A hook is only a proposal until a real actor, object, map location, and action system can execute it.
- A historical context is especially valuable when it changes what an opponent does or what the player can do about it.

### Growth / identity

- Reward progress with new *ways of living and acting*, not merely a bigger number or a completed lore codex.
- Traits, body changes, skills, equipment, relationships, and commitments should make play styles meaningfully different and sometimes involve costs.
- Player choices should contribute to who the character becomes, not merely reveal who someone was centuries ago.

### Factions / contemporary world

- Factions need **present interests, constraints, and responses**, rather than only ancestry, Claims, and ideology tags.
- Present needs may intersect with historical ruins or evidence without proving that the past caused today's motives.
- An action involving history should matter to the present through current ownership, risk, demand, access, or relationships when it is a major game event.

## 6. Design reviews and acceptance tests

For each substantial feature or generated content family, review at least:

- **Without lore:** Is there a meaningful experience if the player ignores all historical explanations?
- **With lore:** Does extra understanding add choices, anticipation, shortcuts, leverage, or wonder—not simply required reading?
- **Variety:** Are two supposedly different outputs actually different in playable obstacles, verbs, consequences, or goals?
- **Player story:** Can the player's actions change what happens, or is the player only observing an authored sequence?
- **Cost:** Would a simpler rule or fewer, deeper content instances yield a better experience?

For a representative playable region, aim to test an **approximately 20–30-minute self-directed play slice** with exploration, risk, meaningful reward, and a reason to pursue a next goal. This is a proposed validation experiment, not a requirement that all sessions last a fixed duration or a claim of existing implementation.

Review both **mechanical validity** (tests, provenance, determinism) and **player experience** (hands-on play). Random history sample reviews and large corpus counts cannot substitute for actual playtesting.

When an ambitious simulation or generated-content expansion fails to create a perceivable player difference, reduce scope, simplify, or defer it. Do not automatically add more content to compensate.

## 7. Explicit exclusions

This decision **does not** require:

- every piece of flavor text or historical record to give a material reward
- every player to pursue every historical mystery
- removing lore, mystery, complex history, or emergent non-combat play
- turning the game into a quest checklist or linear progression
- a fixed character-level model, forced mutations, or an imposed moral arc
- simulating every faction or resolving every unknown historical cause

It *does* require that large investments in lore, simulation, or procedural authoring be justified by the game's **survival, exploration, agency, progression, or emergent-story experience**.

## Related decisions

- [Player Identity and Action Design](player_identity_and_action_design.md): becoming through capabilities and accumulated change.
- [Explainable Systemic Behavior](explainable_systemic_behavior.md): internal distinctions must reach the player's experience.
- [Turn Model](turn_time_model.md): shared action-time grammar.
- [World Persistence](world_persistence.md): lasting current-world state and consequences.

**Priority rule when design goals compete:** preserve an enjoyable, understandable, forward-moving player experience over procedural completeness, encyclopedic history, or maximal simulation complexity.
