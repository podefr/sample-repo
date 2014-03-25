all: clean build browser

clean:


build:
	cat license-mini >> target.min.js
	uglifyjs js/target.js >> target.min.js

browser: clean build
	browserify -r ./target.min.js:project-name -o target-browser.js

.PHONY: all clean browser
