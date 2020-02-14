#!/bin/bash

if [ "$*" == "" ]; then
	git commit --amend
else
	git commit --amend -m "$*"
fi
