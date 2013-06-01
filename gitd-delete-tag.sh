#!/bin/bash

# What: Delete a git tag, locally and remotely
# Usage: gitdeletetag [tag]
# Examples:
#> gitdeletetag v1.0.0
#> gitdeletetag "v2 release"

set -e
cd $(git rev-parse --show-toplevel)

TAGNAME=$1
REMOTE="origin"

git tag -d "$1"

git push origin ":refs/tags/$TAGNAME"
