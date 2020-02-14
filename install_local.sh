#!/bin/bash

# Install all git* scripts on this local machine

for commandFile in git*.sh
do
	commandName=${commandFile/\.sh/}
	echo "installing /usr/local/bin/$commandName"
	cp $commandFile /usr/local/bin/$commandName
	chmod +x /usr/local/bin/$commandName
done
