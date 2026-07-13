#!/usr/bin/env bash
set -euo pipefail

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd -P)"
expected_name="skilllayer-tester-sandbox"
marker="$root/.skilllayer-tester-sandbox"

if [[ "$(basename "$root")" != "$expected_name" ]] || [[ ! -f "$marker" ]]; then
  printf '%s\n' "Refusing: this is not the SkillLayer tester sandbox." >&2
  exit 2
fi

git_root="$(git -C "$root" rev-parse --show-toplevel 2>/dev/null || true)"
if [[ "$git_root" != "$root" ]]; then
  printf '%s\n' "Refusing: sandbox Git identity does not match its root." >&2
  exit 2
fi

for generated in .venv .skilllayer results.md .pytest_cache __pycache__ tests/__pycache__; do
  target="$root/$generated"
  if [[ -e "$target" || -L "$target" ]]; then
    rm -rf -- "$target"
  fi
done

git -C "$root" restore --source=HEAD --staged --worktree -- .
printf '%s\n' "Sandbox reset. Only sandbox-local generated state was removed."
