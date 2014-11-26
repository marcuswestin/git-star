if ! git diff-index --quiet HEAD --; then echo "DIRTY GIT REPO TREE"; exit -1; fi
