echo -------------- Lima Global -------------------
git tag -d "$version"
git push origin :refs/tags/"$version"
echo ----------------------------------------------
echo

echo -------------- ADSC --------------------------
cd camera/adsc
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Andor ------------------------
cd camera/andor
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Aviex ------------------------
cd camera/aviex
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo


echo -------------- Basler ------------------------
cd camera/basler
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- MarCCD ------------------------
cd camera/marccd
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- PCO ------------------------
cd camera/pco
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Perkin Elmer ------------------------
cd camera/perkinelmer
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo

echo -------------- Pilatus -----------------------
cd camera/pilatus
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Prosilica -----------------------
cd camera/prosilica
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Roperscientific -----------------------
cd camera/roperscientific
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo 

echo -------------- Xpad --------------------------
cd camera/xpad
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo


echo -------------- Tango -------------------------
cd applications/tango
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo


echo -------------- Processlib --------------------
cd third-party/Processlib
git tag -d "$version"
git push origin :refs/tags/"$version"
cd ../..
echo ----------------------------------------------
echo
