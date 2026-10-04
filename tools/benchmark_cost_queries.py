#!/usr/bin/env python3
"""WSL runner: timing on original code, counters on an isolated temporary copy.

Example: python3 tools/benchmark_cost_queries.py --output /tmp/cost-before.json
Instrumentation is deliberately absent from shipped runtime classes. --verify
checks allocation/order contracts, never elapsed-time thresholds.
"""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parent.parent
DEFAULT_GODOT = "/mnt/c/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64/Godot_v4.7.2-stable_mono_win64.exe"


def run(godot, project, *args):
    windows = subprocess.check_output(["wslpath", "-w", str(project)], text=True).strip()
    result = subprocess.run([godot, "--headless", "--path", windows, *args], text=True,
                            stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    if result.returncode or "SCRIPT ERROR" in result.stdout or "ERROR:" in result.stdout:
        raise RuntimeError(result.stdout)
    return result.stdout


def instrument(path):
    text = path.read_text()
    text = text.replace("extends RefCounted\n", "extends RefCounted\n\nstatic var bench_steps := 0\nstatic var bench_other_steps := 0\nstatic var bench_rebuilds := 0\n", 1)
    lines = text.splitlines(keepends=True)
    output = []
    stat_function = False
    for line in lines:
        stripped = line.strip()
        if stripped.startswith("func "):
            stat_function = stripped.startswith("func resolve_stat(")
        # Every BASE and appended explanation Dictionary is counted exactly once.
        # append_array transfers existing steps and must not count twice.
        creates = (stripped.startswith("steps.append(") or
                   "steps: Array[Dictionary] = [{" in stripped or
                   stripped.startswith("steps = [{"))
        sorts = ".sort_custom(" in stripped
        if creates or sorts:
            indent = line[:len(line) - len(line.lstrip())]
            output.append(indent + ("bench_steps += 1\n" if creates else "bench_rebuilds += 1\n"))
            if creates and stat_function:
                output.append(indent + "if stat != StatCatalog.MOVEMENT_SPEED:\n" + indent + "\tbench_other_steps += 1\n")
        output.append(line)
    path.write_text("".join(output))


def rows(output):
    return [json.loads(line[6:]) for line in output.splitlines() if line.startswith("BENCH ")]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--godot", default=DEFAULT_GODOT)
    parser.add_argument("--output", required=True)
    parser.add_argument("--verify", action="store_true")
    parser.add_argument("--count-runtime-ref", help="Count an older runtime while retaining an existing timing report")
    parser.add_argument("--git-dir", help="Common WSL Git directory for --count-runtime-ref")
    args = parser.parse_args()
    timed = (json.loads(Path(args.output).read_text()) if args.count_runtime_ref else
             rows(run(args.godot, ROOT, "--script", "res://tools/benchmark_cost_queries.gd")))
    # Temp directory lives on C: so the Windows Godot process can access it.
    with tempfile.TemporaryDirectory(prefix="cost-bench-", dir=ROOT / ".godot") as name:
        stage = Path(name)
        for child in ROOT.iterdir():
            if child.name in (".git", ".godot"):
                continue
            if child.is_dir():
                shutil.copytree(child, stage / child.name)
            else:
                shutil.copy2(child, stage / child.name)
        if args.count_runtime_ref:
            if not args.git_dir:
                parser.error("--count-runtime-ref requires --git-dir")
            for relative in ["game/actions/time_action.gd", "game/actions/action_cost_resolver.gd",
                             "game/actors/actor.gd", "game/effects/stat_resolver.gd", "game/effects/effect_store.gd"]:
                original = subprocess.check_output(["git", "--git-dir", args.git_dir, "show",
                                                    args.count_runtime_ref + ":" + relative], text=True)
                (stage / relative).write_text(original)
        instrument(stage / "game/actions/action_cost_resolver.gd")
        instrument(stage / "game/effects/effect_store.gd")
        benchmark = stage / "tools/benchmark_cost_queries.gd"
        text = benchmark.read_text().replace(
            "# BENCH_COUNTERS: runner inserts observation only in a temporary copy.",
            "EffectStore.bench_steps = 0\n\t\t\t\tEffectStore.bench_rebuilds = 0\n"
            "\t\t\t\tEffectStore.bench_other_steps = 0\n"
            "\t\t\t\tActionCostResolver.bench_steps = 0\n"
            "\t\t\t\t_query(action, game, detailed, ITERATIONS)\n"
            "\t\t\t\tsteps = EffectStore.bench_steps + ActionCostResolver.bench_steps\n"
            "\t\t\t\trebuilds = EffectStore.bench_rebuilds\n"
            "\t\t\t\tother_steps = EffectStore.bench_other_steps")
        benchmark.write_text(text)
        run(args.godot, stage, "--editor", "--quit")
        counted = rows(run(args.godot, stage, "--script", "res://tools/benchmark_cost_queries.gd"))
    assert len(timed) == len(counted) == 12
    for timing, count in zip(timed, counted):
        assert all(timing[key] == count[key] for key in ("effects", "action", "detailed", "checksum"))
        timing.update(steps=count["steps"], cost_steps=count["steps"] - count["other_steps"],
                      other_steps=count["other_steps"], rebuilds=count["rebuilds"])
        if args.verify:
            assert timing["rebuilds"] == 0, timing
            assert timing["cost_steps"] > 0 if timing["detailed"] else timing["cost_steps"] == 0, timing
    Path(args.output).write_text(json.dumps(timed, indent=2) + "\n")
    print(json.dumps(timed, indent=2))


if __name__ == "__main__":
    main()
