#!/bin/bash

set -e # die on error

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