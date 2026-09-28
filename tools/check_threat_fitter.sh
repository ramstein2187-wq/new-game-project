#!/usr/bin/env bash
set -euo pipefail
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT_WINDOWS_PATH="$(wslpath -w "$PROJECT_DIR")"
GODOT_BIN="/mnt/c/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64.exe"
"$GODOT_BIN" --headless --path "$PROJECT_WINDOWS_PATH" --quit-after 2 --script res://tests/test_threat_rating_fitter.gd
