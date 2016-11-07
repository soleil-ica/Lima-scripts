#!/bin/sh

# Author: FL / AN
# Date: 13/10/2015

echo -------------- Lima Global -------------------
git fetch git@github.com:soleil-ica/Lima.git
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git fetch git@github.com:soleil-ica/Lima-camera-adsc
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git fetch git@github.com:soleil-ica/Lima-camera-andor
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex --------------------------
cd camera/aviex
git fetch git@github.com:soleil-ica/Lima-camera-aviex
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git fetch git@github.com:soleil-ica/Lima-camera-basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git fetch git@github.com:soleil-ica/Lima-camera-eiger
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu ------------------------
cd camera/hamamatsu
git fetch git@github.com:soleil-ica/Lima-camera-hamamatsu
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git fetch git@github.com:soleil-ica/Lima-camera-imxpad
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git fetch git@github.com:soleil-ica/Lima-camera-marccd
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git fetch git@github.com:soleil-ica/Lima-camera-merlin
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git fetch git@github.com:soleil-ica/Lima-camera-pco
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git fetch git@github.com:soleil-ica/Lima-camera-perkinelmer
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus ------------------------
cd camera/pilatus
git fetch git@github.com:soleil-ica/Lima-camera-pilatus
cd ../..
echo ----------------------------------------------
echo

echo -------------- Prosilica -----------------------
cd camera/prosilica
git fetch git@github.com:soleil-ica/Lima-camera-prosilica
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git fetch git@github.com:soleil-ica/Lima-camera-roperscientific
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview --------------------------
cd camera/uview
git fetch git@github.com:soleil-ica/Lima-camera-uview
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git fetch git@github.com:soleil-ica/Lima-camera-xpad
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango/cpp -------------------------
cd applications/tango/cpp
git fetch git@github.com:soleil-ica/Lima-tango-cpp
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git fetch git@github.com:soleil-ica/Processlib.git
cd ../..
echo ----------------------------------------------
echo

