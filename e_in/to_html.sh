#!/bin/sh
perl $(realpath $(dirname $0))/to_html.pl
rm -rf ../e/
cp -Rp ../j/ ../e/
mv *.html ../e/contents/
cp $(realpath $(dirname $0))/../j/contents/keywordgrep.js ../e/contents/
