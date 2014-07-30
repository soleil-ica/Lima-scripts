
//- C++
#include <iostream>
#include <string>
#include <time.h>


//- LIMA
#include <HwInterface.h>
#include <CtControl.h>
#include <CtAcquisition.h>
#include <CtVideo.h>
#include <CtImage.h>
#include <BaslerInterface.h>
#include <BaslerCamera.h>

using namespace lima;
using namespace lima::Basler;
using namespace std;



//--------------------------------------------------------------------------------------
//waiting the status of acquisition
//--------------------------------------------------------------------------------------

void wait_while_status_is_standby(CtControl& ct, Interface& hw)
{
	CtControl::Status status;
	HwInterface::StatusType state;

	bool is_already_displayed = false;
	while (1)
	{

		// let's take a look at the status of control & the status of the plugin
		CtControl::Status ctStatus;
		ct.getStatus(ctStatus);

		switch (ctStatus.AcquisitionStatus)
		{
			case lima::AcqReady:
			{
				if (!is_already_displayed)
				{
					cout << "Waiting for Request ..." << endl;
					is_already_displayed = true;
				}
			}
				break;

			case lima::AcqRunning:
			{
				cout << "Acquisition is Running ..." << endl;
				return;
			}
				break;

			case lima::AcqConfig:
			{
				cout << "--> Detector is Calibrating...\n" << endl;
				return;
			}
				break;

			default:
			{
				cout << "--> Acquisition is in Fault\n" << endl;
				return;
			}
				break;
		}
	}
}
//--------------------------------------------------------------------------------------
//waiting the status of acquisition
//--------------------------------------------------------------------------------------

void wait_while_status_is_running(CtControl& ct, Interface& hw)
{
	CtControl::Status status;
	HwInterface::StatusType state;

	bool is_already_displayed = false;
	while (1)
	{

		// let's take a look at the status of control & the status of the plugin
		CtControl::Status ctStatus;
		ct.getStatus(ctStatus);

		switch (ctStatus.AcquisitionStatus)
		{
			case lima::AcqReady:
			{
				cout << "Waiting for Request ...\n" << endl;
				return;
			}
				break;

			case lima::AcqRunning:
			{
				if (!is_already_displayed)
				{
					cout << "Acquisition is Running ..." << endl;
					is_already_displayed = true;
				}
			}
				break;

			case lima::AcqConfig:
			{
				cout << "--> Detector is Calibrating...\n" << endl;
				return;
			}
				break;

			default:
			{
				cout << "--> Acquisition is in Fault\n" << endl;
				return;
			}
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
	ct.startAcq();

	//- waiting while state is standby ...	
	wait_while_status_is_standby(ct, hw);

	clock_t start = clock();
	//- waiting while state is running ...
	wait_while_status_is_running(ct, hw);

	clock_t end = clock();
	double millis = (end - start) / 1000;
	cout << "Elapsed time  = " << millis << " (ms)" << endl;
	cout << "============================================\n" << endl;
}

//--------------------------------------------------------------------------------------
//test main:
//- 1st argument is the IP adress of camera
//- 2nd argument is the exposure_time (in milli seconds)
//- 3rd argument is the latency_time (in milli seconds)
//- 4rd argument is the latency_time (in milli seconds)
//- 5th argument is the nb. of frames to acquire
//- 6th argument is the nb. of snap to do
//- 7th argument is the Bpp
//- 8th argument is the packet size of the socket transport layer
//- 9th argument is the interpacket delay of the socket transport layer
//--------------------------------------------------------------------------------------

int main(int argc, char *argv[])
{
	cout << "============================================" << endl;
	cout << "Usage :./ds_TestLima ip exp lat expacc nbframes nbsnap bpp packet interpacket" << endl << endl;

	try
	{
		string ip_adress				= "172.16.3.137";	//default value
		double exposure_time			= 500;				//default value is 1000 ms
		double latency_time				= 0.0;				//default value is 0 ms
		double acc_max_exposure_time	= 100;				//default value is 100 ms
		int nb_frames					= 10;				//default value is 10
		int nb_snap						= 1;                //default value
		unsigned bpp					= 8;
		int packet_size					= 1500;             //default value
		int interpacket_delay			= 0;				//default value        

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

				istringstream argAccExposure(argv[4]);
				argAccExposure >> acc_max_exposure_time;
			}
				break;

			case 6:
			{
				ip_adress = argv[1];

				istringstream argExposure(argv[2]);
				argExposure >> exposure_time;

				istringstream argLatency(argv[3]);
				argLatency >> latency_time;

				istringstream argAccExposure(argv[4]);
				argAccExposure >> acc_max_exposure_time;

				istringstream argNbSnap(argv[5]);
				argNbSnap >> nb_snap;
			}
				break;

			case 7:
			{
				ip_adress = argv[1];

				istringstream argExposure(argv[2]);
				argExposure >> exposure_time;

				istringstream argLatency(argv[3]);
				argLatency >> latency_time;

				istringstream argAccExposure(argv[4]);
				argAccExposure >> acc_max_exposure_time;

				istringstream argNbFrames(argv[5]);
				argNbFrames >> nb_frames;

				istringstream argNbSnap(argv[6]);
				argNbSnap >> nb_snap;

			}
				break;

			case 8:
			{
				ip_adress = argv[1];

				istringstream argExposure(argv[2]);
				argExposure >> exposure_time;

				istringstream argLatency(argv[3]);
				argLatency >> latency_time;

				istringstream argAccExposure(argv[4]);
				argAccExposure >> acc_max_exposure_time;

				istringstream argNbFrames(argv[5]);
				argNbFrames >> nb_frames;

				istringstream argNbSnap(argv[6]);
				argNbSnap >> nb_snap;

				istringstream argBpp(argv[7]);
				argBpp >> bpp;

			}
				break;

			case 9:
			{
				ip_adress = argv[1];

				istringstream argExposure(argv[2]);
				argExposure >> exposure_time;

				istringstream argLatency(argv[3]);
				argLatency >> latency_time;

				istringstream argAccExposure(argv[4]);
				argAccExposure >> acc_max_exposure_time;

				istringstream argNbFrames(argv[5]);
				argNbFrames >> nb_frames;

				istringstream argNbSnap(argv[6]);
				argNbSnap >> nb_snap;

				istringstream argBpp(argv[7]);
				argBpp >> bpp;

				istringstream argPacketSize(argv[8]);
				argPacketSize >> packet_size;
			}
				break;

			case 10:
			{
				ip_adress = argv[1];

				istringstream argExposure(argv[2]);
				argExposure >> exposure_time;

				istringstream argLatency(argv[3]);
				argLatency >> latency_time;

				istringstream argAccExposure(argv[4]);
				argAccExposure >> acc_max_exposure_time;

				istringstream argNbFrames(argv[5]);
				argNbFrames >> nb_frames;

				istringstream argNbSnap(argv[6]);
				argNbSnap >> nb_snap;

				istringstream argBpp(argv[7]);
				argBpp >> bpp;

				istringstream argPacketSize(argv[8]);
				argPacketSize >> packet_size;

				istringstream argInterPacketDelay(argv[9]);
				argInterPacketDelay >> interpacket_delay;

			}
				break;
		}

		//        
		cout << "============================================" << endl;
		cout << "ip_adress              = " << ip_adress << endl;
		cout << "exposure_time          = " << exposure_time << endl;
		cout << "latency_time           = " << latency_time << endl;
		cout << "acc_max_exposure_time  = " << acc_max_exposure_time << endl;
		cout << "nb_frames              = " << nb_frames << endl;
		cout << "nb_snap                = " << nb_snap << endl;
		cout << "bpp                    = " << bpp << endl;
		cout << "packet_size            = " << packet_size << endl;
		cout << "interpacket_delay      = " << interpacket_delay << endl;
		cout << "============================================" << endl;

		//initialize Balser::Camera objects & Lima Objects
		cout << "Create Camera Object" << endl;
		Camera myCamera(ip_adress, packet_size);

		cout << "Create Interface Object" << endl;
		Interface myInterface(myCamera);

		cout << "Create CtControl Object" << endl;
		CtControl myControl(&myInterface);

		cout << "============================================" << endl;
		HwDetInfoCtrlObj *hw_det_info;
		myInterface.getHwCtrlObj(hw_det_info);

		switch (bpp)
		{
			case 8:
				//- fix imageType = Bpp16
				cout << "Fix imageType \t= " << bpp << endl;
				hw_det_info->setCurrImageType(Bpp8);
				break;

			case 12:
				//- fix imageType = Bpp16
				cout << "Fix imageType \t= " << bpp << endl;
				hw_det_info->setCurrImageType(Bpp12);
				break;

			case 16:
				//- fix imageType = Bpp16
				cout << "Fix imageType \t= " << bpp << endl;
				hw_det_info->setCurrImageType(Bpp16);
				break;
			case 32:
				//- fix imageType = Bpp16
				cout << "Fix imageType \t= " << bpp << endl;
				hw_det_info->setCurrImageType(Bpp32);
				break;

			default:
				//- Error
				cout << "Don't Fix imageType !" << endl;
				break;				
		}

		myCamera.setInterPacketDelay(interpacket_delay);

		//- fix Roi = (0,0,MaxWidth,MaxHeight)
		Size size;
		hw_det_info->getMaxImageSize(size);
		Roi myRoi(0, 0, size.getWidth(), size.getHeight());
		cout << "Fix Roi \t= (" << 0 << "," << 0 << "," << size.getWidth() << "," << size.getHeight() << ")" << endl;
		myControl.image()->setRoi(myRoi);

		//- fix Bin = (1,1)
		cout << "Fix Bin \t= (1,1)" << endl;
		Bin myBin(1, 1);
		myControl.image()->setBin(myBin);

		//- fix exposure
		cout << "Fix exposure \t= " << exposure_time << " (ms)" << endl;
		myControl.acquisition()->setAcqExpoTime(exposure_time / 1000.0); //convert exposure_time to sec
		myControl.video()->setExposure(exposure_time / 1000.0); //convert exposure_time to sec

		//- fix latency
		cout << "Fix latency \t= " << latency_time << " (ms)" << endl;
		myControl.acquisition()->setLatencyTime(latency_time / 1000.0);  //convert latency_time to sec

		cout << "Fix Acc exposure= " << acc_max_exposure_time << " (ms)" << endl;
		myControl.acquisition()->setAccMaxExpoTime(acc_max_exposure_time / 1000.0); //convert exposure_time to sec
		
		//- fix nbFrames = 1
		cout << "Fix nbFrames \t= " << nb_frames << endl;
		myControl.acquisition()->setAcqNbFrames(nb_frames);

		cout << "\n" << endl;

		//start nb_snap acquisition of 1 frame
		for (unsigned i = 0; i < nb_snap; i++)
		{
			//- Tests of AcqMode:
			cout << "============================================" << endl;
			cout << "-	 	AcqMode Tests		  -" << endl;
			cout << "============================================" << endl;
			AcqMode an_acq_mode;
			myControl.acquisition()->getAcqMode(an_acq_mode);
			cout << "Setting AcqMode to SINGLE" << endl;
			myControl.acquisition()->setAcqMode(Single);
			//			cout << "Resetting Status(False)..." << endl;
			//			myControl.resetStatus(false);

			cout << "Snapping ..." << endl;
			make_snap(myControl, myInterface);

			cout << "Setting AcqMode to ACCUMULATION" << endl;
			myControl.acquisition()->setAcqMode(Accumulation);
			//			cout << "Resetting Status(False)" << endl;
			//			myControl.resetStatus(false);
			cout << "Snapping ..." << endl;
			make_snap(myControl, myInterface);
		}
	}
	catch (Exception e)
	{
		cerr << "LIMA Exception : " << e << endl;
	}

	return 0;
}
//--------------------------------------------------------------------------------------
