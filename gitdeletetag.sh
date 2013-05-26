#!/bin/bash

# Usage: gitdeletetag [tag]
# Examples:
#> gitdeletetag v1.0.0
#> gitdeletetag "v2 release"

set -e # die on error

TAGNAME=$1
REMOTE="origin"

git tag -d "$1"

git push origin ":refs/tags/$TAGNAME"
