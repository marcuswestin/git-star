#!/bin/bash

if [[ $# -eq 0 ]]; then
	git commit
elif [[ $# -eq 1 ]]; then
	git commit -m "$1"
else
	echo "Illegal number of parameters"
	exit -1
fi
