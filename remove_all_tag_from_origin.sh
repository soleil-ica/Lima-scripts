#!/bin/sh

# Author: FL / AN
# Date: 27/05/2014

# arguments 
if [ $# -ne 1 ]; then
	echo "Usage: ./remove_all_tag_github.sh tagname"
	exit 2
fi

tagname=$1

echo -------------- Lima Core -------------------
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Dhyana ------------------------
cd camera/dhyana
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Espia ------------------------
cd camera/common/espia
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Eiger ------------------------
cd camera/eiger
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lambda ------------------------
cd camera/lambda
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
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
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- spectralinstrument ---------------
cd camera/spectralinstrument
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- spectrumone ---------------
cd camera/spectrumone
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Ufxc ------------------------
cd camera/ufxc
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Uview -----------------------
cd camera/uview
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo 


echo -------------- Xpad --------------------------
cd camera/xpad
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xspress3 ------------------------
cd camera/xspress3
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Tango -------------------------
cd applications/tango/cpp
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git tag -d "$tagname"
git push origin :refs/tags/"$tagname"
cd ../..
echo ----------------------------------------------
echo
