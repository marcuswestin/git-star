# Install git* scripts from main repository

set -e # die on error

if [ -d /tmp/git-star ]; then
	cd /tmp/git-star
	git pull origin master
else
	git clone https://github.com/marcuswestin/git-star.git /tmp/git-star
	cd /tmp/git-star
fi

bash ./install_local.sh


