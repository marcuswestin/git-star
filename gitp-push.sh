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

# REMOTE="origin"
# BRANCH=`git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

# if [ $2 ]; then
#     REMOTE=$1
#     BRANCH=$2
# elif [ $1 ]; then
#     BRANCH=$1
# fi

# echo "Pushing submodules"
find . -depth -name .git -exec dirname {} \; 2> /dev/null | sort -n -r | xargs -I{} bash -c "cd {}; echo '- Check status: {}'; export REMOTE='origin'; export BRANCH=`git branch --no-color | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`; echo here \$REMOTE \$BRANCH; git status | grep ahead > /dev/null && { echo - Push {} \$REMOTE \$BRANCH; git push \$REMOTE \$BRANCH; }"


# echo "Pushing main"
# git push $REMOTE $BRANCH
