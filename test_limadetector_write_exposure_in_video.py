#!/usr/bin/env python
#########################################################
#Arafat NOUREDDINE
#2014/12/03
#Purpose : Test writing exposure while video acquisition  is already started
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
# run
#------------------------------------------------------------------------------
def run(proxy_name = 'arafat/lima_basler/basler.2', exposure_time = 100, write_period = 1, nb_loops = 1):
    # print arguments
    print '\nProgram inputs :\n--------------'
    print 'proxy_name\t = ', proxy_name
    print 'exposure_time\t =  %s (ms)' %(exposure_time)
    print 'write_period\t =  %s (ms)' %(write_period)
    print 'nb_loops\t = ', nb_loops
    #Configure the device
    print '\nConfigure the Device :\n--------------'
    timeBegin = datetime.datetime.now().isoformat()
    print '\r',timeBegin, " - Create a DeviceProxy to Device ", proxy_name
    proxy = PyTango.DeviceProxy(proxy_name)
    timeBegin = datetime.datetime.now().isoformat()
    print '\r',timeBegin, " - Ping proxy(\"",proxy_name,"\") ",proxy.ping()," us"
    
    timeBegin = datetime.datetime.now().isoformat()
    print '\r',timeBegin, " - State = ",proxy.state();
    print '--> Stop()'
    proxy.Stop()
    timeBegin = datetime.datetime.now().isoformat()
    print '\r',timeBegin, " - State = ",proxy.state();
    print '--> Start()'
    proxy.Start()
    timeBegin = datetime.datetime.now().isoformat()
    print '\r',timeBegin, " - State = ",proxy.state();
    nb_loops=int(nb_loops)
    try:
        current_loop = 0
	while(current_loop < nb_loops):
            print '\n============================'
            print 'Loop : ', current_loop,
            print '\n============================'
            timeBegin = datetime.datetime.now().isoformat()
            print '\r', timeBegin, "---> Writing exposure time = ", float(exposure_time)+int(current_loop)
            proxy.exposureTime = float(exposure_time)+int(current_loop)
            time.sleep(float(write_period)/1000.0)
            current_loop+=1
            print '\noutput :\n--------------'
    except Exception as err:
	   sys.stderr.write('--------------\nERROR :\n--------------\n%s\n' %err)

#------------------------------------------------------------------------------
# Main Entry point
#------------------------------------------------------------------------------
if __name__ == "__main__":
#    if len(sys.argv) < 4:
#        usage()
    print run(*sys.argv[1:])
