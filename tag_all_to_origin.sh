#!/bin/sh

# Author: FL / AN
# Date: 26/05/2014

# arguments 
if [ $# -ne 2 ]; then
	echo "Usage: ./tag_all_to_origin.sh tagname comment"
	exit 2
fi

tagname=$1
comment=$2

echo -------------- Lima Core -------------------
git tag "$tagname" -m "$comment"
git push --tag
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- Common/Espia ------------------------
cd camera/common/espia
git tag "$tagname" -m "$comment"
git push --tag
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Dhyana ---------------
cd camera/dhyana
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu ------------------------
cd camera/hamamatsu
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad ------------------------
cd camera/imxpad
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lambda ---------------
cd camera/lambda
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pco --------------------------
cd camera/pco
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- PerkinElmer --------------------------
cd camera/perkinelmer
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica --------------------------
cd camera/prosilica
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- RoperScientific ---------------
cd camera/roperscientific
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SLSEiger ---------------
cd camera/slseiger
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- SLSJungfrau ---------------
cd camera/slsjungfrau
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- spectralinstrument ---------------
cd camera/spectralinstrument
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- spectrumoneccd ---------------
cd camera/spectrumoneccd
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Ufxc ---------------
cd camera/ufxc
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- UView ---------------
cd camera/uview
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Xpad --------------------------
cd camera/xpad
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xspress3 ---------------
cd camera/xspress3
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo

echo -------------- Tango -------------------------
cd applications/tango/cpp
git tag "$tagname" -m "$comment"
git push --tag
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git tag "$tagname" -m "$comment"
git push --tag
cd ../..
echo ----------------------------------------------
echo
