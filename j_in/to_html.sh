#!/bin/sh
perl $(realpath $(dirname $0))/to_html.pl
cp *.html ../j/contents/
cp $(realpath $(dirname $0))/../j/contents/keywordgrep.js ../j/contents/
