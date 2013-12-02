#!/bin/bash

# What: Pull from the remote branch
# Usage: gitup [[remote] branch]
# Examples:
#> gitup
#> gitup master
#> gitup origin master
#> gitup marcuswestin_remote feature_branch

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

git checkout $BRANCH

echo "Update git repo `pwd` from $REMOTE/$BRANCH"
git fetch $REMOTE $BRANCH
git merge --ff-only $BRANCH
git submodule sync
git submodule update --init --recursive
