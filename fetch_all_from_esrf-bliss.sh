#!/bin/sh

# Author: FL / AN
# Date: 29/09/2015

echo -------------- Andor -------------------------
cd camera/andor
git fetch git://github.com/esrf-bliss/Lima-camera-andor
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex -------------------------
cd camera/aviex
git fetch git://github.com/esrf-bliss/Lima-camera-aviex
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git fetch git://github.com/esrf-bliss/Lima-camera-basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- Common/Espia ------------------------
cd camera/common/espia
git fetch git://github.com/esrf-bliss/Lima-camera-common-espia
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git fetch git://github.com/esrf-bliss/Lima-camera-eiger
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git fetch git://github.com/esrf-bliss/Lima-camera-hamamatsu
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git fetch git://github.com/esrf-bliss/Lima-camera-imxpad
cd ../..
echo ----------------------------------------------
echo

echo -------------- lambda --------------------------
cd camera/lambda
git fetch git://github.com/esrf-bliss/Lima-camera-lambda
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git fetch git://github.com/esrf-bliss/Lima-camera-marccd
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git fetch git://github.com/esrf-bliss/Lima-camera-maxipix
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git fetch git://github.com/esrf-bliss/Lima-camera-merlin
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git fetch git://github.com/esrf-bliss/Lima-camera-pco
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git fetch git://github.com/esrf-bliss/Lima-camera-perkinelmer
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
echo Nothing to do : We use a SOLEIL specific version
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git fetch git://github.com/esrf-bliss/Lima-camera-prosilica
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git fetch git://github.com/esrf-bliss/Lima-camera-roperscientific
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Xpad --------------------------
cd camera/xpad
git fetch git://github.com/esrf-bliss/Lima-camera-xpad
cd ../..
echo ----------------------------------------------
echo

echo -------------- Tango/cpp -------------------------
cd applications/tango/cpp
git fetch git://github.com/esrf-bliss/Lima-tango-cpp
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Processlib --------------------
cd third-party/Processlib
git fetch git://github.com/esrf-bliss/Processlib.git
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lima Core -------------------
git fetch git://github.com/esrf-bliss/Lima.git
echo ----------------------------------------------
echo
