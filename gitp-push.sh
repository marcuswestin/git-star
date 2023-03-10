#!/bin/bash

# What: Push changes to the remote branch
# Usage: gitp-push [remote [branch]]
# Examples:
#> gitp-push
#> gitp-push master
#> gitp-push origin master
#> gitp-push marcuswestin_remote feature_branch

set -e
cd "$(git rev-parse --show-toplevel)"

REMOTE="origin"
BRANCH=`git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

if [ $2 ]; then
    REMOTE=$1
    BRANCH=$2
elif [ $1 ]; then
    BRANCH=$1
fi

echo "Pushing submodules"
git push --recurse-submodules=on-demand

echo "Pushing..."
git push $REMOTE $BRANCH
