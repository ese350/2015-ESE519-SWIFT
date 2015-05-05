#include <opencv2/opencv.hpp>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <unistd.h>
#include <iostream>
#include <stdio.h>
#include <config.h>
#include <glib.h>
#include <skeltrack.h>

using namespace cv;
using namespace std;

#define WIDTH 	640
#define HEIGHT 	480

Mat frame;
string comun = "snap";
static SkeltrackSkeleton *skeleton = NULL;
static SkeltrackJointList list = NULL;

int main(){
	
	//new skeleton device, create new skeleton
	skeleton = skeltrack_skeleton_new ();
	//g_object_get (skeleton, "smoothing-factor", &SMOOTHING_FACTOR, NULL);

	//capture the frame
	cout << "CaptureVideo: " << endl;
	VideoCapture cap;
	cap.open(0);
	cout << "Height: " << cap.get(CV_CAP_PROP_FRAME_HEIGHT) << endl;
	cout << "Width: " << cap.get(CV_CAP_PROP_FRAME_WIDTH) << endl;
	/*
	cap.set(CV_CAP_PROP_FRAME_HEIGHT, 1280);
	cap.set(CV_CAP_PROP_FRAME_WIDTH, 1080);
	cout << "Height:" << cap.get(CV_CAP_PROP_FRAME_HEIGHT) << endl;
	cout << "Width: " << cap.get(CV_CAP_PROP_FRAME_WIDTH) << endl;
	*/
	if(!cap.isOpened())cout <<"error"<<endl;//printf("Error\n");
	if(cap.isOpened()) cout << "Camara capturing" << endl;
	cout << "storing" << endl;
	
	for(int i=0; i<24 ; i++) {
		//cout << dummy << endl;

		cap.grab();
		cap.retrieve(frame, 0);
		cout << "grabbed frame" ;
		char numstr[4];
		sprintf(numstr,"%d", i);
		string nom = comun + numstr+".jpg";
		imwrite(nom, frame);
		cout << "Capture #" <<i<< endl;
		//usleep(30000);
	}

	//on_depth_frame
	while(1){
		//draw skeleton

		SkeltrackJoint *head, *left_hand, *right_hand, 
		*left_shoulder, *right_shoulder, *left_elbow, *right_elbow;
		if (list == NULL){
			//skip
		  	//return FALSE;
		}
		else {
			head = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_HEAD);
			left_hand = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_LEFT_HAND);
			right_hand = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_RIGHT_HAND);
			left_shoulder = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_LEFT_SHOULDER);
			right_shoulder = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_RIGHT_SHOULDER);
			left_elbow = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_LEFT_ELBOW);
			right_elbow = skeltrack_joint_list_get_joint (list,
				SKELTRACK_JOINT_ID_RIGHT_ELBOW);
		}


	}
	return 0;
}