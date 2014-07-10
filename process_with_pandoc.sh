#!/bin/bash

# Intended to be run after prep_for_pandoc.py

for file in `ls ./original_html/*.html`
do
	pandoc \
	--from=html \
	--to=markdown \
	--standalone \
	--template=jekyll.md \
	--reference-links \
	$file -o ./lessons/`basename $file .html`.md
done