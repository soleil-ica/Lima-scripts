#!/bin/sh

# Author: FL / AN
# Date: 12/12/2014

echo -------------- Lima Core -------------------
git pull git://github.com/esrf-bliss/Lima.git
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git pull git://github.com/esrf-bliss/Lima-camera-adsc
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor -------------------------
cd camera/andor
git pull git://github.com/esrf-bliss/Lima-camera-andor
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex -------------------------
cd camera/aviex
git pull git://github.com/esrf-bliss/Lima-camera-aviex
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull git://github.com/esrf-bliss/Lima-camera-basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
echo Nothing to do
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull git://github.com/esrf-bliss/Lima-camera-marccd
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git pull git://github.com/esrf-bliss/Lima-camera-merlin
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git pull git://github.com/esrf-bliss/Lima-camera-pco
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git pull git://github.com/esrf-bliss/Lima-camera-perkinelmer
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
echo Nothing to do
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git pull git://github.com/esrf-bliss/Lima-camera-prosilica
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git pull git://github.com/esrf-bliss/Lima-camera-roperscientific
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview --------------------------
cd camera/uview
git pull git://github.com/esrf-bliss/Lima-camera-uview
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git pull git://github.com/esrf-bliss/Lima-camera-xpad
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git pull git://github.com/esrf-bliss/Lima-tango
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git pull git://github.com/esrf-bliss/Processlib.git
cd ../..
echo ----------------------------------------------
echo

