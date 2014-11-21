#########################################################
#Arafat NOUREDDINE
#2014/11/19
#Purpose : Test LimaDetector state
#########################################################
import os
import sys
import PyTango
import time
import datetime

proxy = ''
#------------------------------------------------------------------------------
# build exception
#------------------------------------------------------------------------------
class BuildError(Exception):
  pass

#------------------------------------------------------------------------------
def prepare(proxyname,expo,nbframes,filegeneration):

    print '\nprepare\n--------'
    #Configure the device
    proxy = PyTango.DeviceProxy(proxyname)
    proxy.exposureTime = float(expo)
    proxy.nbFrames = int(nbframes)
    proxy.fileGeneration = int(filegeneration)

    #Display time when state is STANDBY (just before Prepare())
    timeBegin = datetime.datetime.now().isoformat()
    print timeBegin, ' - ', proxy.state()

    proxy.Prepare()

    #Display time when state is RUNNING (just after prepare())
    timeSnap = datetime.datetime.now().isoformat()
    print timeSnap, ' - ', proxy.state()


    #Loop while state is RUNNING (prepare in progress...)
    while (proxy.currentFrame<proxy.nbFrames):
        state = proxy.state()
        if state == PyTango.DevState.STANDBY:
            break
        print '\r', '...',
        time.sleep(0)

    #Display time when state is STANDBY (just after prepare is finish)
    timeEnd = datetime.datetime.now().isoformat()
    print '\n', timeEnd, ' - ', proxy.state()

    return


#------------------------------------------------------------------------------
def snap(proxyname):

    print '\nsnap\n--------'
    #Configure the device
    proxy = PyTango.DeviceProxy(proxyname)

    #Display time when state is STANDBY (just before Snap())
    timeBegin = datetime.datetime.now().isoformat()
    print timeBegin, ' - ', proxy.state()

    proxy.Snap()
    #Display time when state is RUNNING (just after Snap())
    timeSnap = datetime.datetime.now().isoformat()
    print timeSnap, ' - ', proxy.state()

    #Loop while state is RUNNING (acquisition in progress...)
    while (proxy.currentFrame<proxy.nbFrames):
        state = proxy.state()
        if state == PyTango.DevState.STANDBY:
            break
        print '\r', '...',
        time.sleep(0)

    #Display time when state is STANDBY (just after acquisition is finish)
    timeEnd = datetime.datetime.now().isoformat()
    print '\n', timeEnd, ' - ', proxy.state()

    return proxy.image


#------------------------------------------------------------------------------
# Usage
#------------------------------------------------------------------------------
def usage():
  print "Usage: [python] test_limadetector.py <my/device/proxy> <exposureTime> <nbFrames> <fileGeneration>"
  sys.exit(1)

#------------------------------------------------------------------------------
# Main Entry point
#------------------------------------------------------------------------------
if __name__ == "__main__":
  
  if len(sys.argv) < 4:
	usage()

  proxy_name = sys.argv[1]
  exposure_time = sys.argv[2]
  nb_frames = sys.argv[3]  
  file_generation = sys.argv[4]  

  try:
    prepare(proxy_name,exposure_time,nb_frames,file_generation)
    snap(proxy_name)
  except Exception, err:
	sys.stderr.write('--------\nERROR :\n--------\n%s\n' % str(err))

#------------------------------------------------------------------------------
