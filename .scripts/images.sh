#!/bin/bash

TARGET="./shop-data/scrapper-results"

#clean
rm -rf "$TARGET"
mkdir -p "$TARGET"

#download
git restore --source images --worktree scrapper-results/

#move to target
mv scrapper-results/* "$TARGET/"
mv scrapper-results/.gitignore "$TARGET/"

rmdir scrapper-results  
echo "Pliki z brancha images zostały skopiowane do $TARGET"
