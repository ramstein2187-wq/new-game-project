#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_WINDOWS_PATH="$(wslpath -w "$PROJECT_DIR")"

DEFAULT_GODOT_BIN="/mnt/c/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64.exe"
GODOT_BIN="${GODOT_BIN:-$DEFAULT_GODOT_BIN}"

if [[ ! -f "$GODOT_BIN" ]]; then
    echo "Godot executable not found: $GODOT_BIN" >&2
    echo "Set GODOT_BIN to the WSL path of the Godot executable and run again." >&2
    exit 1
fi

echo "== Godot version =="
"$GODOT_BIN" --version

echo "== Editor parse/import check =="
"$GODOT_BIN" --headless --editor --quit --path "$PROJECT_WINDOWS_PATH"

echo "== Main scene startup smoke test =="
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --quit-after 5

shopt -s nullglob
tests=("$PROJECT_DIR"/tests/test_*.gd)

if ((${#tests[@]} > 0)); then
    echo "== Project tests =="
    for test_file in "${tests[@]}"; do
        relative_path="${test_file#"$PROJECT_DIR"/}"
        echo "-- $relative_path"
        "$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script "res://$relative_path"
    done
fi

echo "All Godot checks passed."
