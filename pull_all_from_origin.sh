#!/bin/sh

# Author: FL / AN
# Date: 12/12/2014

echo -------------- Andor -------------------------
cd camera/andor
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Common/Espia ------------------
cd camera/common/espia
git pull --rebase=merges
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Dhyana ------------------------
cd camera/dhyana
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Dhyana6060 --------------------
cd camera/dhyana6060
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger -------------------------
cd camera/eiger
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu ---------------------
cd camera/hamamatsu
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- ImXpad ------------------------
cd camera/imxpad
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lambda ------------------------
cd camera/lambda
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix -----------------------
cd camera/maxipix
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ---------------------------
cd camera/pco
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------
cd camera/perkinelmer
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific ---------------
cd camera/roperscientific
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SLSJungfrau -------------------
cd camera/slsjungfrau
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo ---------------- SLSEiger --------------------
cd camera/slseiger
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo ----------- SpectralInstrument ---------------
cd camera/spectralinstrument
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo -------------- SpectrumOne -------------------
cd camera/spectrumone
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Ufxc --------------------------
cd camera/ufxc
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview -------------------------
cd camera/uview
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango/cpp ---------------------
cd applications/tango/cpp
git pull --rebase=merges
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Processlib --------------------
cd third-party/Processlib
git pull --rebase=merges
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lima Core ---------------------
git pull --rebase=merges
echo ----------------------------------------------
echo

