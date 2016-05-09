#!/bin/bash
# Reset submodule copy to point to latest master

MY_DIR=$(dirname "$BASH_SOURCE[0]}")
cd "$MY_DIR/.."
# Remove old tags
for tag in $(git tag); do
    git tag -d $tag
done
git fetch origin
git reset --hard origin/master
