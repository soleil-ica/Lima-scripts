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
git archive HEAD | tar -x -C $target_dir/
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git archive HEAD | tar -x -C $target_dir/camera/adsc/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git archive HEAD | tar -x -C $target_dir/camera/andor/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex --------------------------
cd camera/aviex
git archive HEAD | tar -x -C $target_dir/camera/aviex/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git archive HEAD | tar -x -C $target_dir/camera/basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git archive HEAD | tar -x -C $target_dir/camera/marccd/
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git archive HEAD | tar -x -C $target_dir/camera/pco/
cd ../..
echo ----------------------------------------------
echo

echo -------------- perkinelmer ------------------------
cd camera/perkinelmer
git archive HEAD | tar -x -C $target_dir/camera/perkinelmer/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git archive HEAD | tar -x -C $target_dir/camera/pilatus/
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica ---------------------
cd camera/prosilica
git archive HEAD | tar -x -C $target_dir/camera/prosilica/
cd ../..
echo ----------------------------------------------
echo 

echo -------------- roperscientific ------------------------
cd camera/roperscientific
git archive HEAD | tar -x -C $target_dir/camera/roperscientific/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git archive HEAD | tar -x -C $target_dir/camera/xpad/
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git archive HEAD | tar -x -C $target_dir/applications/tango/
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git archive HEAD | tar -x -C $target_dir/third-party/Processlib/
cd ../..
echo ----------------------------------------------
echo
