#!/bin/sh

# Author: FL / AN
# Date: 12/12/2014

echo -------------- Andor -------------------------
cd camera/andor
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-andor
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- Common/Espia ------------------------
cd camera/common/espia
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-common-espia
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-eiger
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-hamamatsu
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-imxpad
cd ../..
echo ----------------------------------------------
echo

echo -------------- lambda --------------------------
cd camera/lambda
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-lambda
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-marccd
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix ------------------------
cd camera/maxipix
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-maxipix
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-merlin
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-pco
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-perkinelmer
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
echo Nothing to do (We use a SOLEIL specific version)
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-prosilica
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-roperscientific
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Xpad --------------------------
cd camera/xpad
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-camera-xpad
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango/cpp -------------------------
cd applications/tango/cpp
git pull --rebase=preserve git://github.com/esrf-bliss/Lima-tango-cpp
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git pull --rebase=preserve git://github.com/esrf-bliss/Processlib.git
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lima Core -------------------
git pull --rebase=preserve git://github.com/esrf-bliss/Lima.git
echo ----------------------------------------------
echo

