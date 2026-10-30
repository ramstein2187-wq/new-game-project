# Code Atlas v1 — read-only architecture explorer

## Purpose and scope

Visualize the **actual checked-out Godot source tree**, rather than a manually
maintained architecture drawing. v1 is a development aid, not a claim that
every indexed system is implemented, integrated, reachable, or play-tested.

- Scan .gd, .tscn, .tres, and .gdshader files, including tests and tools.
- Discover named GDScript classes, file ownership, inheritance, constructor
  references, resource paths and other static symbol mentions.
- Show a system overview, all-file graph, and focused subsystem with direct
  neighbors; search classes and filenames.
- Click a file to see incoming/outgoing references, the evidence line, and
  its link to the scanned commit on GitHub.
- Offline HTML. No build steps, server, JavaScript CDN, or credentials needed.
- Does not modify any Godot gameplay file.

## Generate and use

From the repository root, with Python 3.10+:

~~~bash
python3 tools/code_atlas.py
~~~

Open **docs/code_atlas.html** in a browser. It is a generated artifact and
should not be manually edited. Pass --out /some/path/atlas.html to write
elsewhere; the output is a complete standalone HTML file.

To inspect a specific historical branch or task branch, first check out that
branch in an isolated copy/worktree and **run the scanner there**. The atlas
does not combine mutually exclusive branches. The displayed GitHub source
links default to the checked-out commit SHA, not a moving branch tip.

Additional options:

~~~bash
python3 tools/code_atlas.py --json /tmp/crpg-code-graph.json
python3 tools/code_atlas.py --repo ramstein2187-wq/new-game-project --ref HEAD
python3 -m unittest discover -s tests -p test_code_atlas.py -v
~~~

--ref HEAD is optional and links to a moving ref; the default exact SHA
is usually preferable for reproducibility.

## Data and confidence

An edge means that the **source file text contains a supported static
reference** to the target file. The diagram is not a runtime call graph and
does not guarantee two systems are functionally integrated.

| Edge label | Evidence | Interpretation |
| --- | --- | --- |
| extends | extends KnownClass | Explicit GDScript inheritance |
| constructs | KnownClass.new(...) | Explicit constructor reference |
| resource-path | res://... exact existing path | Explicit resource reference |
| symbol-reference | A known class token | Heuristic mention: may be type-only or incidental |

One edge is kept per file pair and type; hits counts matching references
and line points to its first encounter. The source detail panel shows
the line excerpt so ambiguous edges can be audited.

### Known blind spots

- Runtime dispatch, signals, call(), autoload indirection, and constructed
  paths may be absent.
- Symbol matching can produce false positives (including text inside strings).
- The system grouping is path-based; it is not semantic architectural truth.
- Named classes are matched by class_name; unregistered inner classes and
  script references outside the repository may not resolve.
- Edge direction is referencing source → referenced target.
- Diff comparison, test coverage, runtime tracing, build status,
  multi-branch overlay, and automated architecture scoring are
  **not implemented in v1**.

## Validation and release constraints

Run focused tests:

~~~bash
python3 -m unittest discover -s tests -p test_code_atlas.py -v
python3 tools/code_atlas.py --json /tmp/code-atlas.json
~~~

The generated HTML should be manually checked for search, navigation,
pan/zoom, source links, system focus, and file details. Do not report
browser validation until performed. No changes are made to scene or game
runtime files; a complete Godot regression pass is not needed for this
read-only tooling change.

This work must remain on the dedicated chat/code-atlas-v1 branch until
reviewed. Do not merge or publish the generated atlas without approval.
