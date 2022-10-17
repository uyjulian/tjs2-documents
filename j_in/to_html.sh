#!/bin/sh
perl $(realpath $(dirname $0))/to_html.pl
cp *.html ../j/contents/
cp $(realpath $(dirname $0))/../j/contents/keywordgrep.js ../j/contents/
export CLASSES_FILE_PROC=./classes/to_html.sh
if [[ -f "$CLASSES_FILE_PROC" ]]; then
pushd classes
bash to_html.sh
popd
fi
