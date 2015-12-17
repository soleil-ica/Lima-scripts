#!/bin/sh

# Author: FL / AN
# Date: 14/05/2014

# arguments 
if [ $# -ne 1 ]; then
	echo "Usage: ./archive_all_github.sh target_dir"
	exit 2
fi

target_dir=$1

mkdir -p target_dir

echo -------------- Lima Core -------------------
git archive HEAD --format=zip > $target_dir
echo ----------------------------------------------
echo

echo -------------- Adsc --------------------------
cd camera/adsc
git archive HEAD --format=zip > $target_dir
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git archive HEAD --format=zip > $target_dir
cd ../..
echo ----------------------------------------------
echo
