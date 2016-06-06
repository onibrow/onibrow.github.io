#!/bin/zsh

REPO_ROOT_DIR=$(git rev-parse --show-toplevel)

echo "Writing to index.html"

cd $REPO_ROOT_DIR

markdown markdown/index.md > html/index.html
