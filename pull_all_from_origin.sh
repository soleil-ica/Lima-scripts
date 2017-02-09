#!/bin/sh

# Author: FL / AN
# Date: 12/12/2014

echo -------------- Lima Global -------------------
git pull --rebase git@github.com:soleil-ica/Lima.git
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git pull --rebase git@github.com:soleil-ica/Lima-camera-adsc
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git pull --rebase git@github.com:soleil-ica/Lima-camera-andor
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex --------------------------
cd camera/aviex
git pull --rebase git@github.com:soleil-ica/Lima-camera-aviex
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull --rebase git@github.com:soleil-ica/Lima-camera-basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git pull --rebase git@github.com:soleil-ica/Lima-camera-eiger
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git pull --rebase git@github.com:soleil-ica/Lima-camera-hamamatsu
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git pull --rebase git@github.com:soleil-ica/Lima-camera-imxpad
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull --rebase git@github.com:soleil-ica/Lima-camera-marccd
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git pull --rebase git@github.com:soleil-ica/Lima-camera-merlin
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git pull --rebase git@github.com:soleil-ica/Lima-camera-pco
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git pull --rebase git@github.com:soleil-ica/Lima-camera-perkinelmer
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git pull --rebase git@github.com:soleil-ica/Lima-camera-pilatus
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git pull --rebase git@github.com:soleil-ica/Lima-camera-prosilica
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git pull --rebase git@github.com:soleil-ica/Lima-camera-roperscientific
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview --------------------------
cd camera/uview
git pull --rebase git@github.com:soleil-ica/Lima-camera-uview
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git pull --rebase git@github.com:soleil-ica/Lima-camera-xpad
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango/cpp -------------------------
cd applications/tango/cpp
git pull --rebase git@github.com:soleil-ica/Lima-tango-cpp
cd ../../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git pull --rebase git@github.com:soleil-ica/Processlib.git
cd ../..
echo ----------------------------------------------
echo
