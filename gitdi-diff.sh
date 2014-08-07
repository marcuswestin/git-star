if [ -z "$*" ]
then
	git diff .
else
	git diff "$*"
fi
