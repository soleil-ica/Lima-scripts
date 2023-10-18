#!/bin/sh

# Author: FL 
# Date: 9/12/2020

# arguments 
if [ $# -ne 1 ]; then
	echo "Usage: ./log_all_from_tag_to_head.sh tag"
	exit 2
fi

tag=$1

echo -------------- Lima Core -------------------
git log --pretty="%h - %s (%an)" $tag..HEAD
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Dhyana ------------------------
cd camera/dhyana
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Dhyana6060 ------------------------
cd camera/dhyana6060
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Espia ------------------------
cd camera/common/espia
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lambda ------------------------
cd camera/lambda
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SLSEiger ---------------
cd camera/slseiger
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- SLSJungfrau ---------------
cd camera/slsjungfrau
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SpectralInstrument ---------------
cd camera/spectralinstrument
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SpectrumOne ---------------
cd camera/spectrumone
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Ufxc ------------------------
cd camera/ufxc
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo

echo -------------- Uview -----------------------
cd camera/uview
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo 


echo -------------- Xpad --------------------------
cd camera/xpad
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango/cpp
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git log --pretty="%h - %s (%an)" $tag..HEAD
cd ../..
echo ----------------------------------------------
echo
