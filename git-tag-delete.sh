#!/bin/bash

# What: Delete a git tag, locally and remotely
# Usage: git-tag-delete [tag]
# Examples:
#> git-tag-delete v1.0.0
#> git-tag-delete "v2 release"

set -e
cd "$(git rev-parse --show-toplevel)"

TAGNAME=$1
REMOTE="origin"

git tag -d "$1"

git push origin ":refs/tags/$TAGNAME"
