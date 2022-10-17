#!/bin/sh
perl $(realpath $(dirname $0))/to_html.pl
rm -rf ../e/
cp -Rp ../j/ ../e/
mv *.html ../e/contents/
cp $(realpath $(dirname $0))/../j/contents/keywordgrep.js ../e/contents/
export CLASSES_FILE_PROC=./classes/to_html.sh
if [[ -f "$CLASSES_FILE_PROC" ]]; then
pushd classes
bash to_html.sh
popd
fi
