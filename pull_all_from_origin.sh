#!/bin/sh

# Author: FL / AN
# Date: 12/12/2014

echo -------------- Andor -------------------------
cd camera/andor
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Common/Espia ------------------
cd camera/common/espia
git pull --rebase=preserve
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Dhyana ------------------------
cd camera/dhyana
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger -------------------------
cd camera/eiger
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu ---------------------
cd camera/hamamatsu
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- imXpad ------------------------
cd camera/imxpad
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- lambda ------------------------
cd camera/lambda
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Maxipix -----------------------
cd camera/maxipix
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Merlin ------------------------
cd camera/merlin
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ---------------------------
cd camera/pco
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------
cd camera/perkinelmer
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica ---------------------
cd camera/prosilica
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific ---------------
cd camera/roperscientific
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- slsjungfrau -------------------
cd camera/slsjungfrau
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- slseiger -------------------
cd camera/slseiger
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- spectralinstrument -------------------
cd camera/spectralinstrument
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- spectrumoneccd -------------------
cd camera/spectrumoneccd
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- ufxc --------------------------
cd camera/ufxc
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview -------------------------
cd camera/uview
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xspress3 ----------------------
cd camera/xspress3
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Tango/cpp ---------------------
cd applications/tango/cpp
git pull --rebase=preserve
cd ../../..
echo ----------------------------------------------
echo

echo -------------- Processlib --------------------
cd third-party/Processlib
git pull --rebase=preserve
cd ../..
echo ----------------------------------------------
echo

echo -------------- Lima Core ---------------------
git pull --rebase=preserve
echo ----------------------------------------------
echo

