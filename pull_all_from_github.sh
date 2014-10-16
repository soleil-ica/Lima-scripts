#!/bin/sh

# Author: FL / AN
# Date: 28/07/2014

echo -------------- Lima Core -------------------
git pull 
echo ----------------------------------------------
echo

echo -------------- Adsc --------------------------
cd camera/adsc
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor -------------------------
cd camera/andor
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex -------------------------
cd camera/aviex
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- Eiger ------------------------
cd camera/eiger
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- Hamamatsu ------------------------
cd camera/hamamatsu
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull
cd ../..
echo ----------------------------------------------
echo


echo ---------------- Pco -------------------------
cd camera/pco
git pull
cd ../..
echo ----------------------------------------------
echo 

echo ------------ PerkinElmer ---------------------
cd camera/perkinelmer
git pull
cd ../..
echo ----------------------------------------------
echo 


echo -------------- Pilatus -----------------------
cd camera/pilatus
git pull
cd ../..
echo ----------------------------------------------
echo 


echo -------------- Prosilica ---------------------
cd camera/prosilica
git pull
cd ../..
echo ----------------------------------------------
echo 

echo ----------- Roperscientific ------------------
cd camera/roperscientific
git pull
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Uview --------------------------
cd camera/uview
git pull
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git pull
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git pull
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git pull
cd ../..
echo ----------------------------------------------
echo

