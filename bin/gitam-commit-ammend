#!/bin/bash

if [[ $# -eq 0 ]]; then
	git commit --amend
# elif [[ $# -eq 1 ]]; then
	# Why doesn't this work?!
	# git commit --amend -m \"$@\"
elif [[ $# -eq 1 ]]; then
	git commit --amend -m "$1"
else
	echo "Illegal number of parameters"
	exit -1
fi

