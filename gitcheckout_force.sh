#!/bin/bash

# Usage: gitcheckout_force branch
# Examples:
#> gitcheckout_force foo

cd $(git rev-parse --show-toplevel)

BRANCH=$1

git show-ref --verify --quiet refs/heads/$BRANCH
if [ $? == 0 ]; then
	git checkout $BRANCH
else
	git checkout -b $BRANCH
fi
