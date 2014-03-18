mkdir $dir
echo -------------- Lima Core -------------------
git archive HEAD | tar -x -C $dir/
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git archive HEAD | tar -x -C $dir/camera/adsc/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Basler ------------------------
cd camera/basler
git archive HEAD | tar -x -C $dir/camera/basler
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git archive HEAD | tar -x -C $dir/camera/marccd/
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git archive HEAD | tar -x -C $dir/camera/pco/
cd ../..
echo ----------------------------------------------
echo

echo -------------- perkinelmer ------------------------
cd camera/perkinelmer
git archive HEAD | tar -x -C $dir/camera/perkinelmer/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git archive HEAD | tar -x -C $dir/camera/pilatus/
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica ---------------------
cd camera/prosilica
git archive HEAD | tar -x -C $dir/camera/prosilica/
cd ../..
echo ----------------------------------------------
echo 

echo -------------- roperscientific ------------------------
cd camera/roperscientific
git archive HEAD | tar -x -C $dir/camera/roperscientific/
cd ../..
echo ----------------------------------------------
echo

echo -------------- Xpad --------------------------
cd camera/xpad
git archive HEAD | tar -x -C $dir/camera/xpad/
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git archive HEAD | tar -x -C $dir/applications/tango/
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git archive HEAD | tar -x -C $dir/third-party/Processlib/
cd ../..
echo ----------------------------------------------
echo
