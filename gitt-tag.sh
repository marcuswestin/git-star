#!/bin/bash

# What: Add a tag and push it to the remote
# Usage: gittag <tag name>
# Examples:
#> gittag v1.0.0
#> gittag "v2 release"

set -e
cd $(git rev-parse --show-toplevel)

REMOTE="origin"
BRANCH=`git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

TAGNAME=$1

gitp-push
git tag -a "$1" -m "Tag $1"

echo "Pushing tags..."
git push --tags
