#!/usr/bin/env python3
"""Mirror docs/wiki Markdown pages into the Notion System Wiki database.

Git is the editable source of truth. Each wiki Markdown file carries TOML
front matter describing its Notion database properties. The sync discovers all
wiki files automatically, resolves an existing Notion page by the stable
"소스 파일" property, and creates the page when no match exists.

Only Python's standard library is used so GitHub Actions needs no package
installation step.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
import time
import tomllib
import urllib.error
import urllib.parse
import urllib.request
from datetime import date
from pathlib import Path
from typing import Any, Iterable

REPO_ROOT = Path(__file__).resolve().parents[1]
WIKI_DIR = REPO_ROOT / "docs" / "wiki"
DEFAULT_CONFIG = WIKI_DIR / "wiki-map.json"  # historical filename; now config only
NOTION_API_BASE = "https://api.notion.com/v1"
MAX_RICH_TEXT = 2000
MAX_BLOCKS_PER_REQUEST = 100
PRESERVED_BLOCK_TYPES = {"child_page", "child_database"}
IGNORED_WIKI_FILES = {"README.md"}
BACKTICK = chr(96)
FENCE = BACKTICK * 3

INLINE_TOKEN_RE = re.compile(
    r"(\*\*[^*]+\*\*|\x60[^\x60]+\x60|\[[^\]]+\]\(https?://[^)]+\))"
)
LINK_RE = re.compile(r"^\[([^\]]+)\]\((https?://[^)]+)\)$")
NUMBERED_RE = re.compile(r"^\d+[.)]\s+(.*)$")


class SyncError(RuntimeError):
    pass


def chunk_text(text: str, limit: int = MAX_RICH_TEXT) -> list[str]:
    if text == "":
        return [""]
    return [text[i : i + limit] for i in range(0, len(text), limit)]


def rich_text_segment(
    content: str,
    *,
    bold: bool = False,
    code: bool = False,
    href: str | None = None,
) -> list[dict[str, Any]]:
    result: list[dict[str, Any]] = []
    for chunk in chunk_text(content):
        text_payload: dict[str, Any] = {"content": chunk}
        if href:
            text_payload["link"] = {"url": href}
        item: dict[str, Any] = {"type": "text", "text": text_payload}
        if bold or code:
            item["annotations"] = {
                "bold": bold,
                "italic": False,
                "strikethrough": False,
                "underline": False,
                "code": code,
                "color": "default",
            }
        result.append(item)
    return result


def parse_inline(text: str) -> list[dict[str, Any]]:
    result: list[dict[str, Any]] = []
    cursor = 0
    for match in INLINE_TOKEN_RE.finditer(text):
        if match.start() > cursor:
            result.extend(rich_text_segment(text[cursor : match.start()]))

        token = match.group(0)
        if token.startswith("**"):
            result.extend(rich_text_segment(token[2:-2], bold=True))
        elif token.startswith(BACKTICK):
            result.extend(rich_text_segment(token[1:-1], code=True))
        else:
            link_match = LINK_RE.match(token)
            if link_match:
                result.extend(
                    rich_text_segment(
                        link_match.group(1), href=link_match.group(2)
                    )
                )
            else:
                result.extend(rich_text_segment(token))
        cursor = match.end()

    if cursor < len(text):
        result.extend(rich_text_segment(text[cursor:]))
    return result or rich_text_segment("")


def text_block(block_type: str, text: str) -> dict[str, Any]:
    return {
        "object": "block",
        "type": block_type,
        block_type: {"rich_text": parse_inline(text)},
    }


def code_block(code: str, language: str) -> dict[str, Any]:
    language_map = {
        "bash": "shell",
        "sh": "shell",
        "shell": "shell",
        "python": "python",
        "py": "python",
        "json": "json",
        "yaml": "yaml",
        "yml": "yaml",
        "toml": "plain text",
        "gdscript": "plain text",
        "text": "plain text",
        "txt": "plain text",
    }
    notion_language = language_map.get(language.lower(), "plain text")
    rich_text: list[dict[str, Any]] = []
    for chunk in chunk_text(code):
        rich_text.extend(rich_text_segment(chunk))
    return {
        "object": "block",
        "type": "code",
        "code": {"rich_text": rich_text, "language": notion_language},
    }


def markdown_to_blocks(markdown: str) -> list[dict[str, Any]]:
    """Convert the small Markdown subset used by docs/wiki to Notion blocks."""
    blocks: list[dict[str, Any]] = []
    lines = markdown.splitlines()
    first_content_seen = False
    in_code = False
    code_language = ""
    code_lines: list[str] = []

    for line in lines:
        stripped = line.strip()

        if in_code:
            if stripped.startswith(FENCE):
                blocks.append(code_block("\n".join(code_lines), code_language))
                in_code = False
                code_language = ""
                code_lines = []
            else:
                code_lines.append(line)
            continue

        if stripped.startswith(FENCE):
            in_code = True
            code_language = stripped[3:].strip()
            continue

        if not stripped:
            continue

        if not first_content_seen:
            first_content_seen = True
            if stripped.startswith("# "):
                continue

        if stripped == "---":
            blocks.append({"object": "block", "type": "divider", "divider": {}})
        elif stripped.startswith("### "):
            blocks.append(text_block("heading_3", stripped[4:]))
        elif stripped.startswith("## "):
            blocks.append(text_block("heading_2", stripped[3:]))
        elif stripped.startswith("# "):
            blocks.append(text_block("heading_1", stripped[2:]))
        elif stripped.startswith("- "):
            blocks.append(text_block("bulleted_list_item", stripped[2:]))
        elif stripped.startswith("> "):
            blocks.append(text_block("quote", stripped[2:]))
        else:
            numbered = NUMBERED_RE.match(stripped)
            if numbered:
                blocks.append(text_block("numbered_list_item", numbered.group(1)))
            else:
                blocks.append(text_block("paragraph", stripped))

    if in_code:
        raise SyncError("Unclosed Markdown code fence")

    return blocks


def managed_notice(source_file: str) -> dict[str, Any]:
    notice = (
        f"자동 동기화 페이지입니다. 본문 원본: {source_file}. "
        "Notion에서 직접 수정한 본문은 다음 동기화에서 덮어쓸 수 있습니다."
    )
    return {
        "object": "block",
        "type": "callout",
        "callout": {
            "rich_text": parse_inline(notice),
            "icon": {"type": "emoji", "emoji": "🔄"},
            "color": "gray_background",
        },
    }


def load_config(path: Path) -> dict[str, Any]:
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except FileNotFoundError as exc:
        raise SyncError(f"Configuration file not found: {path}") from exc
    except json.JSONDecodeError as exc:
        raise SyncError(f"Invalid JSON in {path}: {exc}") from exc

    if data.get("version") != 2:
        raise SyncError("Unsupported wiki config version; expected version 2")
    if not isinstance(data.get("data_source_id"), str) or not data["data_source_id"]:
        raise SyncError("wiki config requires data_source_id")

    for key in ("allowed_statuses", "allowed_areas"):
        values = data.get(key)
        if not isinstance(values, list) or not values or not all(
            isinstance(value, str) and value for value in values
        ):
            raise SyncError(f"wiki config requires a non-empty string array: {key}")

    property_names = data.get("database_properties")
    required_properties = {
        "title",
        "status",
        "areas",
        "milestones",
        "last_checked",
        "source_url",
        "source_file",
    }
    if not isinstance(property_names, dict):
        raise SyncError("wiki config requires database_properties")
    missing = required_properties - property_names.keys()
    if missing:
        raise SyncError(
            "Missing database property mapping(s): " + ", ".join(sorted(missing))
        )
    return data


def split_front_matter(text: str, source_file: str) -> tuple[dict[str, Any], str]:
    lines = text.splitlines()
    if not lines or lines[0].strip() != "+++":
        raise SyncError(
            f"{source_file} must start with TOML front matter delimited by +++"
        )

    end = next(
        (index for index, line in enumerate(lines[1:], start=1) if line.strip() == "+++"),
        None,
    )
    if end is None:
        raise SyncError(f"{source_file} has unclosed TOML front matter")

    try:
        metadata = tomllib.loads("\n".join(lines[1:end]))
    except tomllib.TOMLDecodeError as exc:
        raise SyncError(f"Invalid TOML front matter in {source_file}: {exc}") from exc

    body = "\n".join(lines[end + 1 :]).lstrip("\n")
    return metadata, body


def parse_wiki_file(path: Path) -> tuple[dict[str, Any], str, int]:
    source_file = path.relative_to(REPO_ROOT).as_posix()
    metadata, body = split_front_matter(path.read_text(encoding="utf-8"), source_file)

    required = {"status", "areas", "milestones", "source_url", "icon"}
    missing = required - metadata.keys()
    if missing:
        raise SyncError(
            f"{source_file} front matter is missing: {', '.join(sorted(missing))}"
        )

    title = next(
        (line[2:].strip() for line in body.splitlines() if line.startswith("# ")),
        None,
    )
    if not title:
        raise SyncError(f"{source_file} requires an H1 title")

    if not isinstance(metadata["status"], str) or not metadata["status"]:
        raise SyncError(f"{source_file}: status must be a non-empty string")
    if not isinstance(metadata["areas"], list) or not all(
        isinstance(area, str) and area for area in metadata["areas"]
    ):
        raise SyncError(f"{source_file}: areas must be a non-empty string array")
    if not metadata["areas"]:
        raise SyncError(f"{source_file}: areas cannot be empty")
    if not isinstance(metadata["milestones"], str) or not metadata["milestones"]:
        raise SyncError(f"{source_file}: milestones must be a non-empty string")
    if not isinstance(metadata["source_url"], str) or not metadata[
        "source_url"
    ].startswith("https://github.com/"):
        raise SyncError(f"{source_file}: source_url must be a GitHub URL")
    if not isinstance(metadata["icon"], str) or not metadata["icon"]:
        raise SyncError(f"{source_file}: icon must be a non-empty string")

    blocks = markdown_to_blocks(body)
    if not blocks:
        raise SyncError(f"{source_file} contains no body blocks")

    entry = {
        "file": source_file,
        "title": title,
        "status": metadata["status"],
        "areas": metadata["areas"],
        "milestones": metadata["milestones"],
        "source_url": metadata["source_url"],
        "icon": metadata["icon"],
    }
    return entry, body, len(blocks) + 1


def discover_wiki_entries() -> list[tuple[dict[str, Any], Path, str, int]]:
    discovered: list[tuple[dict[str, Any], Path, str, int]] = []
    seen_titles: set[str] = set()
    seen_files: set[str] = set()

    for path in sorted(WIKI_DIR.rglob("*.md")):
        if path.name in IGNORED_WIKI_FILES or path.name.startswith("_"):
            continue
        entry, body, block_count = parse_wiki_file(path)
        if entry["file"] in seen_files:
            raise SyncError(f"Duplicate wiki source path: {entry['file']}")
        if entry["title"] in seen_titles:
            raise SyncError(f"Duplicate wiki title: {entry['title']}")
        seen_files.add(entry["file"])
        seen_titles.add(entry["title"])
        discovered.append((entry, path, body, block_count))

    if not discovered:
        raise SyncError("No wiki Markdown files discovered under docs/wiki")
    return discovered


def validate_taxonomy(
    entries: Iterable[tuple[dict[str, Any], Path, str, int]],
    config: dict[str, Any],
) -> None:
    allowed_statuses = set(config["allowed_statuses"])
    allowed_areas = set(config["allowed_areas"])

    for entry, _, _, _ in entries:
        if entry["status"] not in allowed_statuses:
            raise SyncError(
                f"{entry['file']}: unknown status {entry['status']!r}; "
                f"allowed: {', '.join(config['allowed_statuses'])}"
            )
        unknown_areas = [area for area in entry["areas"] if area not in allowed_areas]
        if unknown_areas:
            raise SyncError(
                f"{entry['file']}: unknown area(s): {', '.join(unknown_areas)}; "
                f"allowed: {', '.join(config['allowed_areas'])}"
            )


def select_entries(
    entries: Iterable[tuple[dict[str, Any], Path, str, int]],
    selectors: list[str],
) -> list[tuple[dict[str, Any], Path, str, int]]:
    entries = list(entries)
    if not selectors:
        return entries

    selected = []
    wanted = set(selectors)
    matched: set[str] = set()
    for item in entries:
        entry = item[0]
        candidates = {
            entry["title"],
            entry["file"],
            Path(entry["file"]).name,
        }
        hits = candidates & wanted
        if hits:
            selected.append(item)
            matched.update(hits)

    missing = wanted - matched
    if missing:
        raise SyncError(f"Unknown --page selector(s): {', '.join(sorted(missing))}")
    return selected


def filter_changed_entries(
    entries: list[tuple[dict[str, Any], Path, str, int]],
    git_ref: str | None,
    config_path: Path,
) -> list[tuple[dict[str, Any], Path, str, int]]:
    if not git_ref or set(git_ref) == {"0"}:
        return entries

    command = [
        "git",
        "diff",
        "--name-only",
        f"{git_ref}..HEAD",
        "--",
        "docs/wiki",
    ]
    result = subprocess.run(
        command,
        cwd=REPO_ROOT,
        check=False,
        capture_output=True,
        text=True,
    )
    if result.returncode != 0:
        raise SyncError(
            f"Could not determine changed wiki files from {git_ref}: "
            f"{result.stderr.strip()}"
        )

    changed = {line.strip() for line in result.stdout.splitlines() if line.strip()}
    config_rel = config_path.relative_to(REPO_ROOT).as_posix()
    if config_rel in changed:
        return entries
    return [item for item in entries if item[0]["file"] in changed]


class NotionClient:
    def __init__(self, token: str, api_version: str) -> None:
        self.token = token
        self.api_version = api_version

    def request(
        self,
        method: str,
        path: str,
        payload: dict[str, Any] | None = None,
    ) -> dict[str, Any]:
        url = f"{NOTION_API_BASE}{path}"
        data = None if payload is None else json.dumps(payload).encode("utf-8")
        headers = {
            "Authorization": f"Bearer {self.token}",
            "Notion-Version": self.api_version,
            "Content-Type": "application/json",
        }

        for attempt in range(4):
            request = urllib.request.Request(
                url, data=data, headers=headers, method=method
            )
            try:
                with urllib.request.urlopen(request, timeout=30) as response:
                    raw = response.read().decode("utf-8")
                    return json.loads(raw) if raw else {}
            except urllib.error.HTTPError as exc:
                body = exc.read().decode("utf-8", errors="replace")
                if exc.code == 429 or 500 <= exc.code < 600:
                    if attempt < 3:
                        retry_after = exc.headers.get("Retry-After")
                        delay = (
                            float(retry_after)
                            if retry_after and retry_after.replace(".", "", 1).isdigit()
                            else 2**attempt
                        )
                        time.sleep(max(delay, 0.5))
                        continue
                raise SyncError(
                    f"Notion API {method} {path} failed ({exc.code}): {body}"
                ) from exc
            except urllib.error.URLError as exc:
                if attempt < 3:
                    time.sleep(2**attempt)
                    continue
                raise SyncError(
                    f"Notion API {method} {path} network failure: {exc}"
                ) from exc

        raise SyncError(f"Notion API {method} {path} failed after retries")

    def list_children(self, block_id: str) -> list[dict[str, Any]]:
        children: list[dict[str, Any]] = []
        cursor: str | None = None
        while True:
            query = {"page_size": "100"}
            if cursor:
                query["start_cursor"] = cursor
            encoded = urllib.parse.urlencode(query)
            response = self.request(
                "GET", f"/blocks/{block_id}/children?{encoded}"
            )
            children.extend(response.get("results", []))
            if not response.get("has_more"):
                break
            cursor = response.get("next_cursor")
            if not cursor:
                raise SyncError("Notion pagination reported has_more without cursor")
        return children

    def query_data_source(self, data_source_id: str) -> list[dict[str, Any]]:
        pages: list[dict[str, Any]] = []
        cursor: str | None = None
        while True:
            payload: dict[str, Any] = {"page_size": 100}
            if cursor:
                payload["start_cursor"] = cursor
            response = self.request(
                "POST", f"/data_sources/{data_source_id}/query", payload
            )
            pages.extend(response.get("results", []))
            if not response.get("has_more"):
                break
            cursor = response.get("next_cursor")
            if not cursor:
                raise SyncError("Notion query reported has_more without cursor")
        return pages

    def create_page(
        self,
        data_source_id: str,
        properties: dict[str, Any],
        icon: str,
    ) -> str:
        payload: dict[str, Any] = {
            "parent": {
                "type": "data_source_id",
                "data_source_id": data_source_id,
            },
            "properties": properties,
            "icon": {"type": "emoji", "emoji": icon},
        }
        response = self.request("POST", "/pages", payload)
        page_id = response.get("id")
        if not isinstance(page_id, str) or not page_id:
            raise SyncError("Notion create-page response did not contain an ID")
        return page_id

    def clear_managed_body(self, page_id: str) -> int:
        deleted = 0
        for child in self.list_children(page_id):
            if child.get("type") in PRESERVED_BLOCK_TYPES:
                print(
                    f"  preserve {child.get('type')} block {child.get('id')}",
                    file=sys.stderr,
                )
                continue
            child_id = child.get("id")
            if child_id:
                self.request("DELETE", f"/blocks/{child_id}")
                deleted += 1
        return deleted

    def append_children(self, page_id: str, blocks: list[dict[str, Any]]) -> None:
        for start in range(0, len(blocks), MAX_BLOCKS_PER_REQUEST):
            batch = blocks[start : start + MAX_BLOCKS_PER_REQUEST]
            self.request(
                "PATCH",
                f"/blocks/{page_id}/children",
                {"children": batch},
            )

    def update_page(
        self,
        page_id: str,
        properties: dict[str, Any],
        icon: str,
    ) -> None:
        self.request(
            "PATCH",
            f"/pages/{page_id}",
            {
                "properties": properties,
                "icon": {"type": "emoji", "emoji": icon},
            },
        )


def property_plain_text(prop: dict[str, Any] | None) -> str:
    if not isinstance(prop, dict):
        return ""
    rich_text = prop.get("rich_text")
    if not isinstance(rich_text, list):
        return ""
    parts: list[str] = []
    for item in rich_text:
        if not isinstance(item, dict):
            continue
        plain = item.get("plain_text")
        if isinstance(plain, str):
            parts.append(plain)
            continue
        text = item.get("text")
        if isinstance(text, dict) and isinstance(text.get("content"), str):
            parts.append(text["content"])
    return "".join(parts)


def existing_pages_by_source(
    client: NotionClient,
    data_source_id: str,
    source_property: str,
) -> dict[str, str]:
    result: dict[str, str] = {}
    for page in client.query_data_source(data_source_id):
        properties = page.get("properties", {})
        source_file = property_plain_text(properties.get(source_property))
        if not source_file:
            continue
        page_id = page.get("id")
        if not isinstance(page_id, str) or not page_id:
            continue
        if source_file in result:
            raise SyncError(
                f"Duplicate Notion pages claim source file {source_file!r}: "
                f"{result[source_file]} and {page_id}"
            )
        result[source_file] = page_id
    return result


def build_properties(
    entry: dict[str, Any],
    property_names: dict[str, str],
) -> dict[str, Any]:
    def rt(value: str) -> list[dict[str, Any]]:
        return rich_text_segment(value)

    return {
        property_names["title"]: {"title": rt(entry["title"])},
        property_names["status"]: {"select": {"name": entry["status"]}},
        property_names["areas"]: {
            "multi_select": [{"name": name} for name in entry["areas"]]
        },
        property_names["milestones"]: {"rich_text": rt(entry["milestones"])},
        property_names["last_checked"]: {"date": {"start": date.today().isoformat()}},
        property_names["source_url"]: {"url": entry["source_url"]},
        property_names["source_file"]: {"rich_text": rt(entry["file"])},
    }


def sync_entry(
    client: NotionClient,
    data_source_id: str,
    existing_by_source: dict[str, str],
    entry: dict[str, Any],
    body: str,
    property_names: dict[str, str],
    *,
    content_only: bool,
) -> str:
    properties = build_properties(entry, property_names)
    page_id = existing_by_source.get(entry["file"])
    created = page_id is None

    if created:
        page_id = client.create_page(
            data_source_id,
            properties,
            entry["icon"],
        )
        existing_by_source[entry["file"]] = page_id
        print(f"Create {entry['title']} <- {entry['file']}")
    else:
        print(f"Sync {entry['title']} <- {entry['file']}")

    if not content_only or created:
        client.update_page(page_id, properties, entry["icon"])

    blocks = [managed_notice(entry["file"]), *markdown_to_blocks(body)]
    deleted = client.clear_managed_body(page_id)
    client.append_children(page_id, blocks)
    action = "created" if created else "updated"
    print(
        f"  {action} page {page_id}; replaced {deleted} body block(s) "
        f"with {len(blocks)} block(s)"
    )
    return page_id


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--config",
        type=Path,
        default=DEFAULT_CONFIG,
        help="wiki config JSON (default: docs/wiki/wiki-map.json)",
    )
    parser.add_argument(
        "--check",
        action="store_true",
        help="validate config/front matter/Markdown without network access",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="show discovered pages without network access",
    )
    parser.add_argument(
        "--page",
        action="append",
        default=[],
        help="sync one page by title, source path, or filename; repeatable",
    )
    parser.add_argument(
        "--changed-since",
        help=(
            "sync only wiki Markdown changed since this Git ref; "
            "a config change forces all discovered pages"
        ),
    )
    parser.add_argument(
        "--content-only",
        action="store_true",
        help="replace page bodies without updating properties for existing pages",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    config_path = args.config
    if not config_path.is_absolute():
        config_path = REPO_ROOT / config_path

    config = load_config(config_path)
    discovered = discover_wiki_entries()
    validate_taxonomy(discovered, config)
    selected = select_entries(discovered, args.page)
    selected = filter_changed_entries(selected, args.changed_since, config_path)

    if args.check:
        print(
            f"OK: {len(discovered)} wiki page(s) discovered and metadata validated"
        )
        return 0

    if args.dry_run:
        for entry, _, _, block_count in selected:
            print(
                f"{entry['title']}: {entry['file']} -> "
                f"lookup by {config['database_properties']['source_file']!r}; "
                f"create if absent ({block_count} block(s))"
            )
        print(f"Dry run: {len(selected)} page(s), no network requests")
        return 0

    if not selected:
        print("No wiki pages changed; nothing to sync")
        return 0

    token = os.environ.get("NOTION_TOKEN", "").strip()
    if not token:
        raise SyncError(
            "NOTION_TOKEN is required for a real sync. "
            "Use --check or --dry-run for offline validation."
        )

    api_version = os.environ.get(
        "NOTION_VERSION", config.get("notion_api_version", "2026-03-11")
    )
    client = NotionClient(token, api_version)
    property_names = config["database_properties"]
    data_source_id = config["data_source_id"]

    existing_by_source = existing_pages_by_source(
        client,
        data_source_id,
        property_names["source_file"],
    )

    created_count = 0
    updated_count = 0
    for entry, _, body, _ in selected:
        was_existing = entry["file"] in existing_by_source
        sync_entry(
            client,
            data_source_id,
            existing_by_source,
            entry,
            body,
            property_names,
            content_only=args.content_only,
        )
        if was_existing:
            updated_count += 1
        else:
            created_count += 1

    print(
        f"Done: synced {len(selected)} Notion wiki page(s) "
        f"({created_count} created, {updated_count} updated)"
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except SyncError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise SystemExit(2)
