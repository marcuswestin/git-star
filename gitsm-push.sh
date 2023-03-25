#!/bin/bash

set -e
cd "$(git rev-parse --show-toplevel)"

echo "Pushing submodules"
find . -depth -name .git -exec dirname {} \; 2> /dev/null | sort -n -r | xargs -I{} bash -c "cd {}; echo '- Check status: {}'; git status | grep ahead > /dev/null && { echo '- Push {}!'; git push; }"

