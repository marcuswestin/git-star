#!/bin/bash

# What: Check out a branch, and create it if it doesn't already exist
# Usage: gitcheckout_force branch
# Examples:
#> gitcheckout_force foo

set -e
cd $(git rev-parse --show-toplevel)

BRANCH=$1

git show-ref --verify --quiet refs/heads/$BRANCH
if [ $? == 0 ]; then
	git checkout $BRANCH
else
	git checkout -b $BRANCH
fi
