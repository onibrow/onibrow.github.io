#!/bin/zsh

REPO_ROOT_DIR=$(git rev-parse --show-toplevel)

cd $REPO_ROOT_DIR

echo "Writing index"

markdown markdown/index.md > test-index.html
cat scripts/header test-index.html > index2.html

echo "Writing projects"

markdown markdown/projects.md > test-projects.html
cat scripts/header test-projects.html > projects.html

echo "Writing builds"

markdown markdown/builds.md > test-builds.html
cat scripts/header test-builds.html > builds.html

echo "Writng tutor"

markdown markdown/tutor.md > test-tutor.html
cat scripts/header test-tutor.html > tutor.html

rm test-*

echo "Done"
