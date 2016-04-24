#!/bin/zsh

REPO_ROOT_DIR=$(git rev-parse --show-toplevel)

echo "Writing to index.html..."

cd $REPO_ROOT_DIR

markdown webpage.md > index.html

echo "Done Writing"
