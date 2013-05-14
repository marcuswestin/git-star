#!/bin/bash

# Usage: gittag [tag]
# Examples:
#> gittag v1.0.0
#> gittag "v2 release"

set -e # die on error

cd $(git rev-parse --show-toplevel)

REMOTE="origin"
BRANCH=`git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

TAGNAME=$1

git tag -a "$1" -m "Tag $1"
git push --tags

echo "Pushing tags..."
