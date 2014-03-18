echo -------------- Lima Global -------------------
git pull git://github.com/esrf-bliss/Lima.git
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git pull git://github.com/esrf-bliss/Lima-camera-adsc
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git pull git://github.com/esrf-bliss/Lima-camera-basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git pull git://github.com/esrf-bliss/Lima-camera-marccd
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

