#!/bin/bash
sass src/index.scss:dist/styles.css
node_modules/.bin/postcss --local-plugins --use autoprefixer --autoprefixer.browsers 'last 2 versions' -o dist/styles.css dist/styles.css
cp src/index.html dist/index.html