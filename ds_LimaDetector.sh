#!/bin/sh


os_arch=$(arch)
if [ $os_arch = "i686" ]
then
#   echo "Linux 32";
#   echo "--------";
   export LD_LIBRARY_PATH=$LIMA_ROOT/linux32/lib:$LD_LIBRARY_PATH;
   $LIMA_ROOT/linux32/bin/ds_LimaDetector $*;
elif [ $os_arch = "x86_64" ]
then
#   echo "Linux 64";
#   echo "--------";
   export LD_LIBRARY_PATH=$LIMA_ROOT/linux64/lib:$LD_LIBRARY_PATH;
   $LIMA_ROOT/linux64/bin/ds_LimaDetector $*;   
else
   echo "Unknown";
fi
