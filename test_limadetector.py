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
def prepare(proxy,expo,nbframes,filegeneration):

    print '\nprepare\n--------'
    #Configure the device
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
    state = proxy.state()
    while (state==PyTango.DevState.RUNNING):
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
def snap(proxy):

    print '\nsnap\n--------'
    #Configure the device    

    #Display time when state is STANDBY (just before Snap())
    timeBegin = datetime.datetime.now().isoformat()
    print timeBegin, ' - ', proxy.state()

    proxy.Snap()
    #Display time when state is RUNNING (just after Snap())
    timeSnap = datetime.datetime.now().isoformat()
    print timeSnap, ' - ', proxy.state()

    #Loop while state is RUNNING (acquisition in progress...)
    state = proxy.state()
    while (state==PyTango.DevState.RUNNING):
        state = proxy.state()
        if state == PyTango.DevState.STANDBY:
            break
        print '\r', '...',
        time.sleep(0)

    #Display time when state is STANDBY (just after acquisition is finish)
    timeEnd = datetime.datetime.now().isoformat()
    print '\n', timeEnd, ' - ', proxy.state()
    return
    #return proxy.image


#------------------------------------------------------------------------------
# Usage
#------------------------------------------------------------------------------
def usage():
  print "Usage: [python] test_limadetector.py <my/device/proxy> <exposureTime> <nbFrames> <fileGeneration>"
  sys.exit(1)


#------------------------------------------------------------------------------
# run
#------------------------------------------------------------------------------
def run(proxy_name, exposure_time, nb_frames, file_generation=True):
    # Blabla
    proxy = PyTango.DeviceProxy(proxy_name)
    nb_frames = int(nb_frames)
  
    try:
        prepare(proxy,exposure_time,nb_frames,file_generation)
        snap(proxy)
        if proxy.currentFrame!=nb_frames:
            print 'FAIL : Acquired frames (%s) is different from requested nb_frames (%s)'  % (proxy.currentFrame, nb_frames)
        return proxy.image
    except Exception, err:
	   sys.stderr.write('--------\nERROR :\n--------\n%s\n' % str(err))

#------------------------------------------------------------------------------
# Main Entry point
#------------------------------------------------------------------------------
if __name__ == "__main__":
    if len(sys.argv) < 4:
        usage()
    print run(*sys.argv[1:])
