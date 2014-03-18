mkdir $dir
echo -------------- Lima Global -------------------
git archive master | tar -x -C $dir/
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git archive master | tar -x -C $dir/camera/adsc/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git archive master | tar -x -C $dir/camera/basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git archive master | tar -x -C $dir/camera/marccd/
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git archive master | tar -x -C $dir/camera/pco/
cd ../..
echo ----------------------------------------------
echo

echo -------------- perkinelmer ------------------------
cd camera/perkinelmer
git archive master | tar -x -C $dir/camera/perkinelmer/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git archive master | tar -x -C $dir/camera/pilatus/
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica ---------------------
cd camera/prosilica
git archive master | tar -x -C $dir/camera/prosilica/
cd ../..
echo ----------------------------------------------
echo 

echo -------------- roperscientific ------------------------
cd camera/roperscientific
git archive master | tar -x -C $dir/camera/roperscientific/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git archive master | tar -x -C $dir/camera/xpad/
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git archive master | tar -x -C $dir/applications/tango/
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git archive master | tar -x -C $dir/third-party/Processlib/
cd ../..
echo ----------------------------------------------
echo
