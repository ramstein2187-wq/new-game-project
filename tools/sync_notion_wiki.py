#!/usr/bin/env python3
"""Mirror docs/wiki Markdown pages into pre-existing Notion database pages.

The sync is intentionally one-way: Git is the editable source, Notion is the
reading surface. The implementation uses only Python's standard library so the
GitHub Action has no package-install step.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from datetime import date
from pathlib import Path
from typing import Any, Iterable

REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_MAP = REPO_ROOT / "docs" / "wiki" / "wiki-map.json"
NOTION_API_BASE = "https://api.notion.com/v1"
MAX_RICH_TEXT = 2000
MAX_BLOCKS_PER_REQUEST = 100
PRESERVED_BLOCK_TYPES = {"child_page", "child_database"}
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
    """Convert the deliberately small inline-Markdown subset used by wiki docs."""
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
    """Convert wiki Markdown to a conservative Notion block subset.

    The first H1 is omitted because the Notion database row already owns the page
    title. Unsupported Markdown remains readable as paragraph text rather than
    trying to guess a lossy structure.
    """
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


def load_mapping(path: Path) -> dict[str, Any]:
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except FileNotFoundError as exc:
        raise SyncError(f"Mapping file not found: {path}") from exc
    except json.JSONDecodeError as exc:
        raise SyncError(f"Invalid JSON in {path}: {exc}") from exc

    if data.get("version") != 1:
        raise SyncError("Unsupported wiki-map version; expected version 1")
    if not isinstance(data.get("pages"), list) or not data["pages"]:
        raise SyncError("wiki-map must contain a non-empty pages array")
    return data


def validate_mapping(mapping: dict[str, Any]) -> list[tuple[dict[str, Any], Path, int]]:
    required = {
        "file",
        "page_id",
        "title",
        "status",
        "areas",
        "milestones",
        "source_url",
    }
    seen_page_ids: set[str] = set()
    seen_files: set[str] = set()
    validated: list[tuple[dict[str, Any], Path, int]] = []

    for index, entry in enumerate(mapping["pages"], start=1):
        missing = required - entry.keys()
        if missing:
            raise SyncError(
                f"Mapping entry {index} is missing: {', '.join(sorted(missing))}"
            )
        if entry["page_id"] in seen_page_ids:
            raise SyncError(f"Duplicate Notion page ID: {entry['page_id']}")
        if entry["file"] in seen_files:
            raise SyncError(f"Duplicate wiki source file: {entry['file']}")
        if not isinstance(entry["areas"], list) or not all(
            isinstance(area, str) and area for area in entry["areas"]
        ):
            raise SyncError(f"Invalid areas in mapping entry {index}")

        source_path = REPO_ROOT / entry["file"]
        if not source_path.is_file():
            raise SyncError(f"Wiki source does not exist: {entry['file']}")

        markdown = source_path.read_text(encoding="utf-8")
        first_heading = next(
            (line[2:].strip() for line in markdown.splitlines() if line.startswith("# ")),
            None,
        )
        if first_heading != entry["title"]:
            raise SyncError(
                f"Title mismatch for {entry['file']}: "
                f"Markdown={first_heading!r}, mapping={entry['title']!r}"
            )

        blocks = markdown_to_blocks(markdown)
        if not blocks:
            raise SyncError(f"Wiki source contains no body blocks: {entry['file']}")

        if not str(entry["source_url"]).startswith("https://github.com/"):
            raise SyncError(f"source_url must be a GitHub URL: {entry['file']}")

        seen_page_ids.add(entry["page_id"])
        seen_files.add(entry["file"])
        validated.append((entry, source_path, len(blocks) + 1))

    return validated


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
                    f"Notion API {method} {path} failed "
                    f"({exc.code}): {body}"
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

    def append_children(
        self, page_id: str, blocks: list[dict[str, Any]]
    ) -> None:
        for start in range(0, len(blocks), MAX_BLOCKS_PER_REQUEST):
            batch = blocks[start : start + MAX_BLOCKS_PER_REQUEST]
            self.request(
                "PATCH",
                f"/blocks/{page_id}/children",
                {"children": batch},
            )

    def update_properties(
        self,
        page_id: str,
        properties: dict[str, Any],
    ) -> None:
        self.request("PATCH", f"/pages/{page_id}", {"properties": properties})


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
    }


def select_entries(
    validated: Iterable[tuple[dict[str, Any], Path, int]],
    selectors: list[str],
) -> list[tuple[dict[str, Any], Path, int]]:
    entries = list(validated)
    if not selectors:
        return entries

    selected = []
    wanted = set(selectors)
    matched: set[str] = set()
    for item in entries:
        entry = item[0]
        candidates = {
            entry["page_id"],
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
    entries: list[tuple[dict[str, Any], Path, int]],
    git_ref: str | None,
) -> list[tuple[dict[str, Any], Path, int]]:
    if not git_ref:
        return entries
    if set(git_ref) == {"0"}:
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
    if "docs/wiki/wiki-map.json" in changed:
        return entries
    return [item for item in entries if item[0]["file"] in changed]


def sync_entry(
    client: NotionClient,
    entry: dict[str, Any],
    source_path: Path,
    property_names: dict[str, str],
    *,
    content_only: bool,
) -> None:
    markdown = source_path.read_text(encoding="utf-8")
    blocks = [managed_notice(entry["file"]), *markdown_to_blocks(markdown)]

    print(f"Sync {entry['title']} <- {entry['file']}")
    if not content_only:
        client.update_properties(
            entry["page_id"], build_properties(entry, property_names)
        )
    deleted = client.clear_managed_body(entry["page_id"])
    client.append_children(entry["page_id"], blocks)
    print(f"  replaced {deleted} body block(s) with {len(blocks)} block(s)")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--map",
        type=Path,
        default=DEFAULT_MAP,
        help="wiki mapping JSON (default: docs/wiki/wiki-map.json)",
    )
    parser.add_argument(
        "--check",
        action="store_true",
        help="validate mapping and Markdown without network access",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="show pages/block counts without network access",
    )
    parser.add_argument(
        "--page",
        action="append",
        default=[],
        help="sync one mapped page by ID, title, path, or filename; repeatable",
    )
    parser.add_argument(
        "--changed-since",
        help=(
            "sync only mapped wiki Markdown changed since this Git ref; "
            "a wiki-map change forces all mapped pages"
        ),
    )
    parser.add_argument(
        "--content-only",
        action="store_true",
        help="replace page bodies without updating database properties",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    map_path = args.map
    if not map_path.is_absolute():
        map_path = REPO_ROOT / map_path

    mapping = load_mapping(map_path)
    validated = validate_mapping(mapping)
    selected = select_entries(validated, args.page)
    selected = filter_changed_entries(selected, args.changed_since)

    if args.check:
        print(f"OK: {len(validated)} mapped wiki page(s) validated")
        return 0

    if args.dry_run:
        for entry, _, block_count in selected:
            print(
                f"{entry['title']}: {entry['file']} -> "
                f"{entry['page_id']} ({block_count} block(s))"
            )
        print(f"Dry run: {len(selected)} page(s), no network requests")
        return 0

    if not selected:
        print("No mapped wiki pages changed; nothing to sync")
        return 0

    token = os.environ.get("NOTION_TOKEN", "").strip()
    if not token:
        raise SyncError(
            "NOTION_TOKEN is required for a real sync. "
            "Use --check or --dry-run for offline validation."
        )

    api_version = os.environ.get(
        "NOTION_VERSION", mapping.get("notion_api_version", "2026-03-11")
    )
    property_names = mapping.get("database_properties", {})
    required_property_names = {
        "title",
        "status",
        "areas",
        "milestones",
        "last_checked",
        "source_url",
    }
    missing_property_names = required_property_names - property_names.keys()
    if missing_property_names:
        raise SyncError(
            "Missing database property mapping(s): "
            + ", ".join(sorted(missing_property_names))
        )

    client = NotionClient(token, api_version)
    for entry, source_path, _ in selected:
        sync_entry(
            client,
            entry,
            source_path,
            property_names,
            content_only=args.content_only,
        )

    print(f"Done: synced {len(selected)} Notion wiki page(s)")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except SyncError as exc:
        print(f"ERROR: {exc}", file=sys.stderr)
        raise SystemExit(2)
