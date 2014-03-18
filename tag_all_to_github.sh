echo -------------- Lima Global -------------------
git tag "$version" -m "$text"
git push --tag
echo ----------------------------------------------
echo

 
echo -------------- Basler ------------------------
cd camera/basler
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- ADSC --------------------------
cd camera/adsc
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- MarCCD ------------------------
cd camera/marccd
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- Pilatus -----------------------
cd camera/pilatus
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo 


echo -------------- Xpad --------------------------
cd camera/xpad
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git tag "$version" -m "$text"
git push --tag
cd ../..
echo ----------------------------------------------
echo
