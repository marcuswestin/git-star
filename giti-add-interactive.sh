ARGS=$@

#if [ "$ARGS" == "" ]; then
#	ARGS="."
#fi
#
#echo "ARGS: $ARGS"

git add -p $ARGS
