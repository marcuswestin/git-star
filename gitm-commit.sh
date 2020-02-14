if [[ "$*" == "" ]]; then
	git commit
else
	git commit -m "$*"
fi
