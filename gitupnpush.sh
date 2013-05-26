#!/bin/bash

# What: Pull from and then push to the remote branch
# Usage: gitupnpush [[remote] branch]
# Examples:
#> gitupnpush
#> gitupnpush master
#> gitupnpush origin master
#> gitupnpush marcuswestin_remote feature_branch

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

gitup $REMOTE $BRANCH
echo "Pushing..."
git push $REMOTE $BRANCH