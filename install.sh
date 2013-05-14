set -e # die on error

for commandFile in git*.sh
do
	commandName=${commandFile/\.sh/}
	echo "installing /usr/local/bin/$commandName"
	curl https://raw.github.com/marcuswestin/git-star/master/$commandFile > /tmp/$commandFile
	chmod +x /tmp/$commandFile
	mv /tmp/$commandFile /usr/local/bin/$commandName
done
