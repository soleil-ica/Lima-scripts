#!/bin/sh

# Author: FL / AN
# Date: 26/05/2014

# arguments 
if [ $# -ne 2 ]; then
	echo "Usage: ./tag_all_github.sh version comment"
	exit 2
fi

version=$1
comment=$2

echo -------------- Lima Core -------------------
git tag "$version" -m "$comment"
git push --tag
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex --------------------------
cd camera/aviex
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Espia ------------------------
cd camera/common/espia
git tag "$version" -m "$comment"
git push --tag
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu ------------------------
cd camera/hamamatsu
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad ------------------------
cd camera/imxpad
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pco --------------------------
cd camera/pco
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- PerkinElmer --------------------------
cd camera/perkinelmer
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica --------------------------
cd camera/prosilica
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- RoperScientific ---------------
cd camera/roperscientific
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SLSJungfrau ---------------
cd camera/slsjungfrau
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- UView ---------------
cd camera/uview
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Xpad --------------------------
cd camera/xpad
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango/cpp
git tag "$version" -m "$comment"
git push --tag
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git tag "$version" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo
