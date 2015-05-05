#include <opencv2/opencv.hpp>
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <unistd.h>
#include <iostream>
#include <stdio.h>
using namespace cv;
using namespace std;

Mat frame;
Mat dummy(3,3,CV_8UC1, Scalar(2));
string comun = "snap";

int main(int argc, char** argv) {
	cout << "CaptureVideo: " << endl;
	VideoCapture cap;
	cap.open(0);
	cout << "Height: " << cap.get(CV_CAP_PROP_FRAME_HEIGHT) << endl;
	cout << "Width: " << cap.get(CV_CAP_PROP_FRAME_WIDTH) << endl;
	cap.set(CV_CAP_PROP_FRAME_HEIGHT, 640);
	cap.set(CV_CAP_PROP_FRAME_WIDTH, 480);
	cout << "Height:" << cap.get(CV_CAP_PROP_FRAME_HEIGHT) << endl;
	cout << "Width: " << cap.get(CV_CAP_PROP_FRAME_WIDTH) << endl;
	if(!cap.isOpened())cout <<"error"<<endl;//printf("Error\n");
	if(cap.isOpened()) cout << "Camara capturing" << endl;
	cout << "storing" << endl;

	for(int i=0; i<10 ; i++) {
		//cout << dummy << endl;

		cap.grab();
		cap.retrieve(frame, 0);
		cout << "grabbed frame" << endl;
		char numstr[4];
		sprintf(numstr,"%d", i);
		string nom = comun + numstr+".jpg";
		imwrite(nom, frame);
		cout << "Capture #" <<i<< endl;
	//usleep(30000);

	}

	return 0;
}