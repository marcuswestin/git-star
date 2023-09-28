setup: * bin/*
	@ brew list node >/dev/null 2>&1 || brew install node
	@ node ./setup.js
