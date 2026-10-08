# Independent raw review protocol

Sample only after a clean5000 corpus. `sample_history_v5.py` draws20 seeds with
Python SystemRandom/OS entropy, independently of all generator RNG namespaces.
The selection file is write-once. Round2 excludes every round1 seed. Export raw
renderer outputs without editorial reconstruction and preserve their hashes.

Read each raw file from first line through final validation line. Do not filter
to the questions, accept an excerpt as a full read, replace an uninteresting world
or choose an output after inspecting its seed. Append a reading/score checkpoint
to local Markdown whenever context may be interrupted.

Score each axis separately on0–10:

| Axis | Evidence to consider |
|---|---|
| Lore Fit | Authored human/Origin gates, bounded technology, unresolved Canon |
| Historical Plausibility | Timing, distinct stage facts, continuity and gaps, record relevance |
| Interest | Particular choices, losses, recoverable material and conflicts worth investigating |
| Political Diversity | Actual formation/retirement/lineage/current makeup, beyond names |
| Imaginative Space | Known facts support possible connections without declaring every cause |
| Non-Repetition | Repeated phase semantics, sentence shapes, boilerplate and interaction mismatch |
| Temporal Depth | Generations, intervals, institutional change, subsequent uses of older remains |
| Gameplay Potential | Concrete evidence paths, meaningful action proposals and current stakes |

Give at least two concrete hooks per world, citing its actual Question/Trace/event
and a potential player action. Describe engine/placement requirements candidly.
Count recurring defects per sampled world, with concrete examples. Rank best and
worst3 using the same eight-score mean; explain using actual content. The review
is judgment, not automatic proof or an aggregate safety claim.

After round1 write “What I got wrong” and apply general rules/content improvements,
never per-seed fixes. After full revalidation and disjoint round2 compare means,
worst3, recurring defect incidence, distributions and interaction/evidence breadth.
Different samples are an independent check, not a controlled causal score experiment.
Report soft target misses honestly. Consumer proposals remain integration work.
