#!/bin/bash
set -e


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
IMAGES_DIR="$ROOT_DIR/scrapper-results"
REMOTE_URL=$(git -C "$ROOT_DIR" remote get-url origin)

if [ ! -d "$IMAGES_DIR" ]; then
    echo "Error: scrapper-results/ directory not found"
    exit 1
fi


TEMP_DIR=$(mktemp -d)
trap "rm -rf '$TEMP_DIR'" EXIT

cp -r "$IMAGES_DIR" "$TEMP_DIR/"

cd "$TEMP_DIR"
git init -q
git add scrapper-results/
git commit -q -m "Update images - $(date '+%Y-%m-%d %H:%M:%S')"

echo "Pushing to origin/images..."
git push --force "$REMOTE_URL" HEAD:images

echo "Done! Images uploaded to origin/images"
