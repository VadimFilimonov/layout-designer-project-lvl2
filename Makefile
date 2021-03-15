install:
	npm install

lint:
	npx editorconfig-checker ./src
	npx htmlhint --config .htmlhint
	npx stylelint ./src/scss/**/*.{scss,css}
