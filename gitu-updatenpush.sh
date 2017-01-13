#!/bin/bash

# What: Pull from and then push to the remote branch
# Usage: gitu-updatenpush [[remote] branch]
# Examples:
#> gitu-updatenpush
#> gitu-updatenpush master
#> gitu-updatenpush origin master
#> gitu-updatenpush marcuswestin_remote feature_branch

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

gitu-update $REMOTE $BRANCH
echo "Pushing..."
git push $REMOTE $BRANCH