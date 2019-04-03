#!/bin/sh

# Author: FL / AN
# Date: 27/05/2014

# arguments 
if [ $# -ne 1 ]; then
	echo "Usage: ./remove_all_tag_github.sh version"
	exit 2
fi

version=$1

echo -------------- Lima Global -------------------
git tag -d "$version"
git push origin :refs/tags/"$version"
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex --------------------------
cd camera/aviex
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Dhyana ------------------------
cd camera/dhyana
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Espia ------------------------
cd camera/common/espia
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Eiger ------------------------
cd camera/eiger
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lambda ------------------------
cd camera/lambda
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Ufxc ------------------------
cd camera/ufxc
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Uview -----------------------
cd camera/uview
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 


echo -------------- Xpad --------------------------
cd camera/xpad
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpress3 ------------------------
cd camera/xpress3
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Tango -------------------------
cd applications/tango/cpp
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo
