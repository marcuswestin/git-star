if [ -z "$*" ]
then
    git reset .
else
    git reset "$*"
fi
