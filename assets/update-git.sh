#!/bin/bash
#
# This script assumes a linux environment

echo "*** weBlock: git adding changed assets..."
git add --update --ignore-removal --ignore-errors ./*
echo "*** weBlock: git committing assets..."
git commit -m 'update of third-party assets'
echo "*** weBlock: git pushing assets to remote master..."
git push origin master

echo "*** weBlock: git done."

