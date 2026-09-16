#!/usr/bin/env bash
set -euo pipefail

if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This directory is already a Git repository."
  exit 1
fi

printf 'GitHub empty repository URL (HTTPS or SSH): '
read -r REMOTE_URL
printf 'Git commit author name: '
read -r GIT_NAME
printf 'Git commit author email (GitHub no-reply email is OK): '
read -r GIT_EMAIL

if [[ -z "$REMOTE_URL" || -z "$GIT_NAME" || -z "$GIT_EMAIL" ]]; then
  echo "Repository URL, author name, and author email are required."
  exit 1
fi

git init -b main
git config user.name "$GIT_NAME"
git config user.email "$GIT_EMAIL"

git add .
git commit -m "chore: initialize Godot project"

git remote add origin "$REMOTE_URL"

echo
echo "Local repository initialized and origin configured."
echo "Pushing main to origin..."
git push -u origin main

echo
echo "Done. Future AI implementation tasks should use dedicated task branches as defined in AGENTS.md."
