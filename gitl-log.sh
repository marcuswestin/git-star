if [ -z "$*" ]
then
    git log .
else
    git log "$*"
fi
