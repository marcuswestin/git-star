if ! git diff-index --quiet HEAD --; then
	echo "DIRTY"
else
	echo "CLEAN"
fi


