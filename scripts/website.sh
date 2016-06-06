#!/bin/zsh

REPO_ROOT_DIR=$(git rev-parse --show-toplevel)

cd $REPO_ROOT_DIR

echo "Writing index"

markdown markdown/index.md > index.html

echo "Writing projects"

markdown markdown/projects.md > projects.html

echo "Writing builds"

markdown markdown/builds.md > builds.html

echo "Done"
