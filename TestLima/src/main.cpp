
//- C++
#include <iostream>
#include <string>
#include <time.h>


//- LIMA
#include <HwInterface.h>
#include <CtControl.h>
#include <CtAcquisition.h>
#include <CtImage.h>
#include <BaslerInterface.h>
#include <BaslerCamera.h>

using namespace lima;
using namespace lima::Basler;
using namespace std;



//--------------------------------------------------------------------------------------
//waiting the status of acquisition
//--------------------------------------------------------------------------------------
void wait_status(CtControl& ct, Interface& hw)
{
    CtControl::Status status;
    HwInterface::StatusType state;

    bool is_already_done = false;
    while (1)
    {
        ct.getStatus(status);
        hw.getStatus(state);
        if (status.AcquisitionStatus == lima::AcqRunning)
        {
            if (!is_already_done)
            {
                cout << "Acquisition is Running ..." << endl;
                is_already_done = true;
            }
            continue;
        }
        else if (status.AcquisitionStatus == lima::AcqReady && state.acq != AcqFault)
        {
            cout << "Acquisition is Finished." << endl;
            break;
        }
        else
        {
            cout << "Acquisition is in Fault." << endl;
            break;
        }
    }
}

//--------------------------------------------------------------------------------------
// start a snap
//--------------------------------------------------------------------------------------
void make_snap(CtControl& ct, Interface& hw)
{
    //- prepare acqusition
    cout << "prepareAcq" << endl;
    ct.prepareAcq();

    //- start acqusition
    cout << "startAcq" << endl;
    clock_t start = clock();
    ct.startAcq();
    
    //- waiting while state is running ...
    wait_status(ct, hw);

    clock_t end = clock();
    double millis = (end - start)/1000;
    cout << "Elapsed time  = " << millis << " (ms)" << endl;
    cout << "--------------------------------------------\n" << endl;
}

//--------------------------------------------------------------------------------------
//test main:
//- 1st argument is the IP adress of camera
//- 2nd argument is the exposure_time (in milli seconds)
//- 3rd argument is the latency_time (in milli seconds)
//- 4th argument is the nb. of snap to do
//- 5th argument is the packet size of the socket transport layer
//- 6th argument is the interpacket delay of the socket transport layer
//--------------------------------------------------------------------------------------
int main(int argc, char *argv[])
{
    try
    {
        string ip_adress = "172.16.3.120";  //default value
        double exposure_time = 500;      //default value is 1000 ms
	double acc_max_exposure_time = 100;
        double latency_time  = 0.0;         //default value is 0 ms
        int nb_snap = 1;                   //default value
        int packet_size = 1500;             //default value
        int interpacket_delay = 0;          //default value        
        
        //read args of main 
        switch (argc)
        {
            case 2:
            {
                ip_adress = argv[1];
            }
            break;
            
            case 3:
            {
                ip_adress = argv[1];
                
                istringstream argExposure(argv[2]);
                argExposure >> exposure_time;
            }
            break;
            
            case 4:
            {
                ip_adress = argv[1];
                
                istringstream argExposure(argv[2]);
                argExposure >> exposure_time;
                
                istringstream argLatency(argv[3]);
                argLatency >> latency_time;                             
            }
            break;     

            case 5:
            {
                ip_adress = argv[1];
                
                istringstream argExposure(argv[2]);
                argExposure >> exposure_time;
                
                istringstream argLatency(argv[3]);
                argLatency >> latency_time;   
                
                istringstream argNbSnap(argv[4]);
                argNbSnap >> nb_snap;                
            }
            break;    
            
            case 6:
            {
                ip_adress = argv[1];
                
                istringstream argExposure(argv[2]);
                argExposure >> exposure_time;
                
                istringstream argLatency(argv[3]);
                argLatency >> latency_time;   
                
                istringstream argNbSnap(argv[4]);
                argNbSnap >> nb_snap;         
                
                istringstream argPacketSize(argv[5]);
                argPacketSize >> packet_size;                       
            }
            break;  

            case 7:
            {
                ip_adress = argv[1];
                
                istringstream argExposure(argv[2]);
                argExposure >> exposure_time;
                
                istringstream argLatency(argv[3]);
                argLatency >> latency_time;   
                
                istringstream argNbSnap(argv[4]);
                argNbSnap >> nb_snap;        
                
                istringstream argPacketSize(argv[5]);
                argPacketSize >> packet_size;       
                
                istringstream argInterPacketDelay(argv[6]);
                argInterPacketDelay >> interpacket_delay;                  
                
            }
            break;  
            
        }

        //        
        cout<<"============================================"<<endl;
        cout<<"ip_adress         	= "<<ip_adress<<endl;
        cout<<"exposure_time     	= "<<exposure_time<<endl;
	cout<<"acc_max_exposure_time	= "<<acc_max_exposure_time<<endl;
        cout<<"latency_time      	= "<<latency_time<<endl;        
        cout<<"nb_snap           	= "<<nb_snap<<endl;
        cout<<"packet_size       	= "<<packet_size<<endl;
        cout<<"interpacket_delay 	= "<<interpacket_delay<<endl;        
        cout<<"============================================"<<endl;
        
        //initialize Balser::Camera objects & Lima Objects
        cout << endl;
        cout << "Create Camera Object" << endl;
        Camera myCamera(ip_adress, packet_size);

        cout << "Create Interface Object" << endl;
        Interface myInterface(myCamera);

        cout << "Create CtControl Object" << endl;
        CtControl myControl(&myInterface);

        HwDetInfoCtrlObj *hw_det_info;
        myInterface.getHwCtrlObj(hw_det_info);

        //- fix imageType = Bpp8
        cout << "Fix imageType \t= Bpp8" << endl;
        hw_det_info->setCurrImageType(Bpp8);

        myCamera.setInterPacketDelay(interpacket_delay);

        //- fix Roi = (0,0,MaxWidth,MaxHeight)
        cout << "Fix Roi \t= (0,0,MaxWidth,MaxHeight)" << endl;
        Size size;
        hw_det_info->getDetectorImageSize(size);
        Roi myRoi(0, 0, size.getWidth(), size.getHeight());
        myControl.image()->setRoi(myRoi);

        //- fix Bin = (1,1)
        cout << "Fix Bin \t= (1,1)" << endl;
        Bin myBin(1, 1);
        myControl.image()->setBin(myBin);

        //- fix exposure
        cout << "Fix exposure \t= " << exposure_time<< " (ms)"<<endl;
        myControl.acquisition()->setAcqExpoTime(exposure_time/1000.0); //convert exposure_time to sec
	//myControl.video()->setExposure(exposure_time/1000.0); //convert exposure_time to sec
	myControl.acquisition()->setAccMaxExpoTime(acc_max_exposure_time/1000.0); //convert exposure_time to sec

        //- fix latency
        cout << "Fix latency \t= " << latency_time<< " (ms)"<<endl;        
        myControl.acquisition()->setLatencyTime(latency_time/1000.0);  //convert latency_time to sec
        
        //- fix nbFrames = 1
        cout << "Fix nbFrames \t= 1" << endl;        
        myControl.acquisition()->setAcqNbFrames(1); 
        
        cout<<"--------------------------------------------\n\n"<<endl;
        
        //start nb_snap acquisition of 1 frame
        /*for (unsigned i = 0; i < nb_snap; i++)
        {
            make_snap(myControl, myInterface);
        }*/

	//- Tests of AcqMode:
	cout<<"============================================"<<endl;
	cout<<"-	 	AcqMode Tests		  -"<<endl;
	cout<<"============================================"<<endl;
	AcqMode an_acq_mode;
	myControl.acquisition()->getAcqMode(an_acq_mode);
	cout << "Current AcqMode = " << an_acq_mode << endl;
	cout << "Setting AcqMode to SINGLE" << endl;
	myControl.acquisition()->setAcqMode(Single);	
	cout << "Resetting Status(False)..." << endl;
	myControl.resetStatus(false);
	for(int i=0;i<100000000;i++);
	cout << "Snapping ..." << endl;
	make_snap(myControl, myInterface);

	cout << "Setting AcqMode to ACCUMULATION" << endl;
	myControl.acquisition()->setAcqMode(Accumulation);	
	myControl.acquisition()->getAcqMode(an_acq_mode);
	cout << "Current AcqMode = " << an_acq_mode << endl;
	cout << "Resetting Status(False)" << endl;
	myControl.resetStatus(false);
	cout << "Snapping ..." << endl;
	make_snap(myControl, myInterface);

	
    }
    catch (Exception e)
    {
        cerr << "LIMA Exception : " << e << endl;
    }

    return 0;
}
//--------------------------------------------------------------------------------------
