[[ ! git diff-index --quiet HEAD -- ]] && echo "DIRTY" || echo "CLEAN"

