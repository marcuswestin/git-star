ARGS=$@

if [ "$ARGS" == "" ]
	then ARGS=.
fi

git add -p $ARGS
