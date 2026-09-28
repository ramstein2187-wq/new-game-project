# Believable Tactical AI — Bounded Rationality

Status: **Accepted design direction; not yet implemented**

## Decision

Combat AI should optimize for **believable, legible and enjoyable behavior**, not for globally optimal play.

An NPC should act competently enough that its body, equipment, temperament and local situation matter, while remaining imperfect enough for the player to read, exploit, surprise and outplay it.

The project therefore adopts **bounded tactical rationality**:

- decisions use a limited, actor-appropriate view of the world;
- AI chooses one local action and reconsiders after it resolves;
- AI does not search for a globally optimal multi-turn sequence by default;
- personality and creature archetype may bias decisions away from mathematically optimal play;
- important decisions retain causal reasons that can reach the player;
- simulation may tune parameters and measure consequences, but win-rate maximization is not the design objective.

This extends the existing explainable-systemic-behavior decision: an AI decision should be understandable not only to developers, but eventually to a player observing the creature.

## Design target

The desired experience is:

> "That creature's decision makes sense for what it appears to know and what kind of creature it is."

Not:

> "That creature always found the objectively strongest move."

A good opponent may make mistakes. A good mistake should usually come from limited information, temperament, commitment, fear, greed, poor coordination, or a deliberately simple heuristic rather than arbitrary coin flips.

## Information boundary

AI information is divided into four categories.

### Self knowledge — exact

An actor may know its own immediately available state precisely:

- current HP and body-part function;
- whether it can attack, move, use an ability or manipulate an item;
- its own equipment and known abilities;
- its own traits, aggression, fear, loyalty or current goal;
- its own position and action costs.

### Direct observation — current but coarse where appropriate

An actor may use things it can currently perceive:

- visible actor positions;
- distance and adjacency;
- obvious wounds or incapacitation;
- visible equipment or rough armor category when recognizable;
- nearby allies and enemies;
- immediately visible hazards and obstacles;
- an observed recent action such as a heavy swing, retreat or spell.

Prefer qualitative bands when exact hidden numbers would make behavior feel omniscient:

- healthy / wounded / critical, not exact enemy HP;
- light / heavy-looking armor, not exact armor value;
- near / reachable / distant, not hidden global calculations.

### Memory and inference — limited and fallible

Future perception systems may provide:

- last seen position;
- recently observed behavior;
- rough learned expectations such as "my attacks are barely hurting this target";
- remembered hostility or ally injury.

Memory should become stale. Inference does not grant access to hidden truth.

### Forbidden omniscience by default

Normal combat AI should not directly consume:

- unseen actor positions;
- exact hidden enemy stats;
- exact enemy HP when not otherwise knowable;
- future RNG outcomes or RNG state;
- exact hidden hit/damage probabilities merely because the engine can compute them;
- the opponent's hidden future plan;
- world information the actor could not reasonably know;
- a complete future ready-time schedule for all actors.

Specific supernatural, technological or narrative abilities may explicitly break these limits as a gameplay rule.

## Decision horizon

Default tactical reasoning is **one committed action**.

    observe
    → form local tactical context
    → generate plausible candidates
    → score through personality + context
    → choose one action
    → execute through the shared Action system
    → observe again

The AI should not normally solve several turns ahead.

Limited anticipation is allowed when it corresponds to an understandable heuristic:

- stepping there exposes me to several enemies;
- if I stay here the enemy must come to me;
- that target looks close to defeat;
- my escape route is blocked.

## basic_melee_v2 scope

basic_melee_v2 should be the first implementation of this philosophy.

It is **not** intended to solve target selection, squad tactics, perception, cover systems or long-range combat all at once.

### Candidate actions

When legal and locally meaningful, the policy may consider:

- **Attack** — strike the current target.
- **Approach** — move toward a position from which the target can be threatened.
- **Hold** — spend time without closing distance when advancing is unattractive.
- **Reposition** — move locally to a better nearby tile rather than always taking the shortest path.
- **Retreat** — increase distance when self-preservation outweighs pressure.
- **Interact** — open an obstacle needed to pursue the current goal.
- **Wait** — safe fallback when no meaningful option exists.

The generic TacticalPlanner remains the evaluator. Policies should generate multiple candidates rather than returning the first hard-coded branch whenever practical.

### Initial local factors

Keep v2 scoring deliberately small:

- self_condition — healthy, impaired, critical, attack capability lost, locomotion impaired;
- target_condition — coarse visible vulnerability;
- aggression — preference for committing to pressure;
- fear / self-preservation — preference for disengaging;
- distance_pressure — whether movement meaningfully closes or opens distance;
- ally_support — nearby allies increase confidence without implying perfect coordination;
- exposure — whether a tile is locally threatened by several visible enemies;
- commitment — avoid oscillating between advance and retreat without meaningful change;
- action_efficiency — coarse concern for obviously expensive actions, without solving the complete future scheduler.

Not every creature needs every factor.

### Deliberate non-goals for v2

Do not add yet:

- multi-turn minimax or tree search;
- exact expected-damage optimization against every target;
- global encounter solving;
- perfect focus-fire coordination;
- flanking formations;
- cover and ranged-fire doctrine;
- faction target selection;
- full sight/hearing and target memory;
- online reinforcement learning;
- neural-network combat control.

## Personality and archetype

The same tactical facts should not force every actor into the same decision.

Personality/archetype modifies utility rather than replacing the common decision pipeline.

    observed tactical state
    + body capabilities
    + archetype preference
    + dynamic emotion/state
    → candidate utilities

Possible future tendencies:

- aggressive: accepts more exposure to keep pressure;
- cautious: disengages earlier and values safe positions;
- territorial: holds ground rather than pursuing indefinitely;
- pack-oriented: gains confidence from nearby allies;
- berserk: discounts self-preservation;
- disciplined: less likely to break commitment or chase bait.

These are preferences, not hard-coded species scripts unless a creature genuinely requires unique behavior.

A Boar may charge too eagerly because that is its temperament. A Crab may prefer to hold position. A Wolf may become bolder with nearby pack members. Such differences may be suboptimal and still be correct design.

## Designed imperfection

Imperfection should primarily come from bounded reasoning rather than arbitrary randomness.

Preferred sources:

1. limited perception;
2. coarse state categories;
3. short decision horizon;
4. personality bias;
5. commitment or hesitation;
6. incomplete coordination;
7. stale memory;
8. small controlled score jitter only when needed to prevent mechanical repetition.

Randomness should not routinely make an actor choose an obviously nonsensical action when a clear motive exists.

## Player legibility

Strong tactical behavior should usually create a readable cue before or while it matters.

Examples:

- a cautious enemy visibly backs away after being wounded;
- a territorial creature stops pursuit at a boundary;
- a pack becomes bolder after allies arrive;
- an armored brute holds position instead of mindlessly chasing;
- an aggressive creature commits to a risky advance.

Developer trace may expose the full reason set. Player-facing expression may use only positioning, animation, a bark, inspection or a short combat-log cue.

## Anti-frustration constraints

Treat these behaviors cautiously even when they are mathematically strong:

- perfect kiting using exact action-time arithmetic;
- omniscient focus on the statistically weakest party member;
- instant target switching based on hidden HP;
- flawless synchronized focus fire by unrelated creatures;
- endlessly refusing engagement because waiting is optimal;
- reading player input or future queued actions;
- exploiting implementation quirks an in-world actor could not perceive.

Powerful coordinated enemies may use stronger tactics when clearly justified by training, intelligence, telepathy, leadership or another diegetic reason.

## Evaluation

AI quality is not measured by win rate alone.

Automated scenarios should eventually track:

- illegal or wasted action rate;
- time spent unable to make progress;
- useful candidate diversity;
- retreat / hold / approach frequency under controlled situations;
- behavior changes after injury or ally arrival;
- repeated oscillation between contradictory actions;
- reason-code coverage;
- production combat performance and TR changes.

Manual playtests should ask:

- Can the player form a plausible explanation for what the NPC did?
- Does the creature's behavior express its archetype?
- Can the player manipulate or exploit that behavior?
- Does better AI create interesting pressure rather than merely higher damage taken?
- Are mistakes understandable rather than random-looking?
- Does the AI give the player opportunities to make meaningful counter-decisions?

## Relationship to simulation and Threat Rating

Combat simulation remains an **instrument**, not an AI objective function.

A material policy change should have a revision such as basic_melee_v1 → basic_melee_v2. TR can then be recalibrated to measure the realized combat-strength change.

A TR increase is evidence that an AI revision uses the actor's abilities more effectively. It does **not** by itself prove that the revision is better for the game.

Offline parameter search may later help tune utility weights, but candidate structure, information limits, personality and player-facing constraints remain authored design.

## Suggested implementation sequence

### Phase A — local multi-candidate melee

- Replace the v1 attack / approach / wait branch chain with candidate generation.
- Add Attack, Approach, Hold, Reposition, Retreat and fallback Wait.
- Reuse TacticalPlanner, TacticalChoice, common Actions and reason tracing.
- Route AI reads through an explicit tactical context so later perception can replace direct omniscient state access.
- Add deterministic scenario tests.

### Phase B — archetype preferences

- Move aggression / caution / territorial / pack-style preferences into reusable data.
- Validate that identical combat bodies can behave differently because of profile weights.
- Keep reasons visible in the developer trace.

### Phase C — ally-aware local tactics

- Add nearby ally/enemy counts and local occupancy pressure.
- Improve repositioning and reduce actors treating allies only as path blockers.
- Do not implement squad-wide optimal coordination yet.

### Later — perception and target selection

- Add sight/hearing, memory and target selection as distinct layers.
- Preserve the same candidate → evaluate → action boundary.
- Give special creatures explicit permissions for information normal actors cannot access.

## Architectural guideline

Do not let basic_melee_v2 become a giant policy script.

Prefer an eventual flow:

    TacticalContext
        ↓
    Candidate providers
        ↓
    TacticalChoice[]
        ↓
    TacticalPlanner
        ↓
    chosen TimeAction + reasons
        ↓
    production execution + CombatEvent

TacticalContext should expose only AI-permitted knowledge, making the information boundary testable.

This is a direction, not a requirement to build a generalized AI framework before v2 has demonstrated value.
