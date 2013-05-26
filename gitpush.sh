#!/bin/bash

# What: Push changes to the remote branch
# Usage: gitpush [remote [branch]]
# Examples:
#> gitpush
#> gitpush master
#> gitpush origin master
#> gitpush marcuswestin_remote feature_branch

set -e
cd $(git rev-parse --show-toplevel)

REMOTE="origin"
BRANCH=`git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

if [ $2 ]; then
    REMOTE=$1
    BRANCH=$2
elif [ $1 ]; then
    BRANCH=$1
fi

echo "Pushing..."
git push $REMOTE $BRANCH