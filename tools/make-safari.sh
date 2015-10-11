#!/bin/bash
#
# This script assumes an OS X or *NIX environment

echo "*** weBlock.safariextension: Copying files..."

DES=dist/build/weBlock.safariextension
rm -rf $DES
mkdir -p $DES

cp -R assets $DES/
rm $DES/assets/*.sh
cp -R src/css $DES/
cp -R src/img $DES/
cp -R src/js $DES/
cp -R src/lib $DES/
cp -R src/_locales $DES/
cp src/*.html $DES/
mv $DES/img/icon_128.png $DES/Icon.png
cp platform/safari/*.js $DES/js/
cp -R platform/safari/img $DES/
cp platform/safari/Info.plist $DES/
cp platform/safari/Settings.plist $DES/
cp LICENSE.txt $DES/

echo "*** weBlock.safariextension: Generating Info.plist..."
python tools/make-safari-meta.py $DES/

if [ "$1" = all ]; then
    echo "*** Use Safari's Extension Builder to create the signed weBlock extension package -- can't automate it."
fi

echo "*** weBlock.safariextension: Done."
