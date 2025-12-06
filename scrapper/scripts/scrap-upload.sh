#!/bin/bash
set -e

REPO_ROOT="$(git rev-parse --show-toplevel)"
IMAGES_DIR="$REPO_ROOT/scrapper-results"
REMOTE_URL="$(git remote get-url origin)"
REMOTE_BRANCH="images"

[ -d "$IMAGES_DIR" ] || { echo "Error: scrapper-results not found"; exit 1; }

TEMP_DIR=$(mktemp -d)
trap "rm -rf '$TEMP_DIR'" EXIT

cp -r "$IMAGES_DIR" "$TEMP_DIR/"
git -C "$TEMP_DIR" init -q
git -C "$TEMP_DIR" add .
git -C "$TEMP_DIR" commit -q -m "Update images - $(date '+%Y-%m-%d %H:%M:%S')"
git -C "$TEMP_DIR" push --force "$REMOTE_URL" HEAD:"$REMOTE_BRANCH"

echo "Done! Images uploaded to $REMOTE_BRANCH branch"