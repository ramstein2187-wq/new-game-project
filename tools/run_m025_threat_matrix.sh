#!/usr/bin/env bash
set -euo pipefail
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_WINDOWS_PATH="$(wslpath -w "$PROJECT_DIR")"
GODOT_BIN="${GODOT_BIN:-/mnt/c/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64.exe}"
exec "$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --script res://tools/m025_threat_matrix.gd -- "$@"
