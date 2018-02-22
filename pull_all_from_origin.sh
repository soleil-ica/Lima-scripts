#!/bin/sh

# Author: FL / AN
# Date: 12/12/2014

echo -------------- Lima Global -------------------
git pull --rebase
echo ----------------------------------------------
echo

echo -------------- Andor --------------------------
cd camera/andor
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex --------------------------
cd camera/aviex
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu --------------------------
cd camera/hamamatsu
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad --------------------------
cd camera/imxpad
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git pull --rebase
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git pull --rebase
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git pull --rebase
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview --------------------------
cd camera/uview
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

echo -------------- Tango/cpp -------------------------
cd applications/tango/cpp
git pull --rebase
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Processlib --------------------
cd third-party/Processlib
git pull --rebase
cd ../..
echo ----------------------------------------------
echo

