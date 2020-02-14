#!/bin/bash

if [ -z "$*" ]
then
	git diff --cached
else
	git diff --cached "$*"
fi
