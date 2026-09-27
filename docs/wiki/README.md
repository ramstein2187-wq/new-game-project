# CRPG Wiki Mirror

This directory is the Git-side source for the human-readable Notion system wiki.

## Source-of-truth rule

- Game code and the durable documents under `docs/` remain authoritative for implementation state.
- `docs/wiki/*.md` is the concise human-readable system view mirrored into Notion.
- Notion is a derived reading surface. Do not rely on manual Notion body edits surviving the next sync.
- A discussed or planned feature must not be described as implemented until the relevant code/branch/validation has been checked.

## When to update a wiki page

Update the relevant page when a change materially alters:

- player-visible system behavior
- durable architecture or ownership
- core numeric rules or invariants
- implementation status of a documented system
- a known limitation that changes how the system should be understood

Do not update the wiki for incidental refactors that do not change the system description.

## Automatic sync

`.github/workflows/notion-wiki-sync.yml` runs after changes under `docs/wiki/**` reach `main`.

The workflow calls:

```bash
python tools/sync_notion_wiki.py
```

The mapping between Markdown files and existing Notion pages lives in `docs/wiki/wiki-map.json`.

### One-time repository setup

For this single-user project, use a Notion Personal Access Token (PAT).

1. In the Notion Developer portal, create a PAT for the workspace with the **Notion API** capability.
2. Copy the token when it is shown; Notion does not show the value again.
3. Add the token to the GitHub repository as the Actions secret `NOTION_TOKEN`.
4. Run the **Sync Notion Wiki** workflow manually once to verify access.

A PAT acts with the permissions of the user who created it, so the wiki pages do not need to be separately shared with a bot connection. PATs expire; rotate the GitHub secret before the selected expiration date.

The Notion page IDs committed in `wiki-map.json` are identifiers, not credentials. The token must never be committed.

## Local validation

No Notion token is required for structural checks:

```bash
python tools/sync_notion_wiki.py --check
python tools/sync_notion_wiki.py --dry-run
```

A real sync requires `NOTION_TOKEN` in the environment.

## Adding another page

1. Create the Notion page in the System Wiki database.
2. Add or update its Markdown file under this directory.
3. Add one entry to `wiki-map.json`.
4. Run `python tools/sync_notion_wiki.py --check`.
5. Commit the Markdown and mapping change together.
