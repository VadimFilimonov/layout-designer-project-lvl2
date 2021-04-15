install:
	npm install

sass:
	npx sass --watch ./src/scss/app.scss ./src/css/app.css

develop:
	npx browser-sync start --server "src" --no-notify --no-ui --files "src/**/*"

build:
	npx sass ./src/scss/app.scss ./src/css/app.css

lint:
	npx editorconfig-checker ./src
	npx htmlhint --config .htmlhint
	npx stylelint ./src/scss

deploy: build
	npx surge ./src
