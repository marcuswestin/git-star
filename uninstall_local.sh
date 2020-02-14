#!/bin/bash

# Install all git* scripts on this local machine

for commandFile in /usr/local/bin/git[a-z]*
do
	echo "uninstall $commandFile"
	rm $commandFile
done
