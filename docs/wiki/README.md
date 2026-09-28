# CRPG Wiki Mirror

This directory is the Git-side source for the human-readable Notion system wiki.

## Source-of-truth rule

- Game code and the durable documents under `docs/` remain authoritative for implementation state.
- `docs/wiki/*.md` is the concise human-readable system view mirrored into Notion.
- Notion is a derived reading surface. Do not rely on manual Notion body edits surviving the next sync.
- A discussed or planned feature must not be described as implemented until the relevant code/branch/validation has been checked.

## Automatic discovery and page creation

Every system page is discovered directly from its Markdown file. There is no per-page Notion ID mapping to maintain.

Each file starts with TOML front matter:

```toml
+++
status = "설계"
areas = ["코어"]
milestones = "미배정 — ROADMAP Candidate"
source_url = "https://github.com/ramstein2187-wq/new-game-project/blob/main/docs/ROADMAP.md"
icon = "🧩"
+++
# 새 시스템 이름
```

The H1 becomes the Notion page title. The file path itself is the stable sync key.

Use only the taxonomy values configured in `notion-config.json`. Local validation rejects status/area typos instead of silently creating stray Notion select options.

The Notion **시스템 위키** database contains a `소스 파일` property. During sync:

1. scan `docs/wiki/**/*.md` (except `README.md` and files beginning with `_`)
2. read front matter and the H1 title
3. query the Notion System Wiki database by existing rows
4. match rows by `소스 파일`
5. update the matching page, or create a new database page automatically when no match exists
6. write the Git source path back to `소스 파일`

So adding a new system normally requires only a new Markdown file. No Notion page creation and no page-ID registration are required.

## When to update a wiki page

Update the relevant page when a change materially alters:

- player-visible system behavior
- durable architecture or ownership
- core numeric rules or invariants
- implementation status of a documented system
- a known limitation that changes how the system should be understood

Do not update the wiki for incidental refactors that do not change the system description.

## Automatic sync

`.github/workflows/notion-wiki-sync.yml` runs after relevant wiki/tooling changes reach `main`.

The workflow calls:

```bash
python tools/sync_notion_wiki.py
```

`docs/wiki/notion-config.json` stores shared Notion database configuration. Per-page Notion IDs are discovered at runtime and are not committed.

### One-time repository setup

The Notion PAT and GitHub `NOTION_TOKEN` secret are already the only credentials required. The Notion System Wiki database also needs the `소스 파일` rich-text property used as the stable Git↔Notion key.

The page IDs are discovered at runtime and are not committed to the repository.

## Local validation

No Notion token is required for structural checks:

```bash
python tools/sync_notion_wiki.py --check
python tools/sync_notion_wiki.py --dry-run
```

A real sync requires `NOTION_TOKEN` in the environment.

## Adding a new system page

1. Copy `docs/wiki/_template.md` to a descriptive filename.
2. Fill in the front matter.
3. Write the current-system explanation below the H1.
4. Run `python tools/sync_notion_wiki.py --check`.
5. Commit it with the implementation/design documentation that introduced the system.

After the change reaches `main`, the workflow creates the Notion database page automatically if it does not already exist.

## Rename and deletion behavior

The source file path is the stable identity.

- Renaming a wiki Markdown file is treated as a new source and will create a new Notion page unless the existing Notion row's `소스 파일` is migrated first.
- Deleting a Git wiki file does **not** automatically delete/archive the Notion page. Destructive cleanup stays manual by design.
