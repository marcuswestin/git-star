const pathCommand = `PATH=$PATH:${__dirname}/bin`
const zProfileLines = [
	`# git-star (see https://github.com/marcuswestin/git-star):`,
	pathCommand
].join('\\n')

console.log(`
Run these commands:

	export ${pathCommand}
	echo '\\n${zProfileLines}' >> ~/.zprofile

`)
