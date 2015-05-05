#include "GRT/GRT.h"
#include <iostream>
#include <fstream>
using namespace GRT;


const int MAXSTOPNUM = 5;
const int MINSAMPLESIZE = 20;
const int THRESHOLD_X = 3;
const int THRESHOLD_Y = 3;
const int THRESHOLD_Z = 3;

int main (int argc, const char * argv[])
{
    //Create a new DTW instance and dtw type pipeline
    DTW dtw;

        //dtw.enableNullRejection( true );

        //dtw.setNullRejectionCoeff( 3 );

        //dtw.enableTrimTrainingData(true, 0.1, 90);

       //dtw.setOffsetTimeseriesUsingFirstSample(true);

    //Load some training data to train the classifier - the DTW uses TimeSeriesClassificationData
    TimeSeriesClassificationData trainingData;

    std::ifstream ifs ("data.txt");
    std::ofstream ofs;
    ofs.open("newtesting.grt");
    MatrixDouble testSample;
    testSample.setAllValues( 0 );
    UINT DataDimension = 3;
    UINT stop_sign = 0;
    int stop_counter  = 0;
    bool stop_flag = false;
    double  inputData1[3] = {0,0,0};
            //inputData2[3] = {0,0,0};
    VectorDouble inputData2 (DataDimension);
    VectorDouble rawdata1(DataDimension);
    VectorDouble rawdata2(DataDimension);

    //Derivative
    Derivative deriv1(Derivative::FIRST_DERIVATIVE);
    Derivative deriv2(Derivative::SECOND_DERIVATIVE);
    MovingAverageFilter filter ( 20, 3);

    MovementIndex movementIndex( 50, 1);
    ofstream output("prepossessing.csv");

    while(!ifs.eof()){
        stop_sign = 0;
        stop_flag = false;
        testSample.clear();
        UINT line_counter = 0;

        while(!ifs.eof()){
            //get the input data
            ifs>>rawdata1[0]>>rawdata1[1]>>rawdata1[2] ; //>>rawdata2[0]>>rawdata2[1]>>rawdata2[2];

            //output << rawdata1[0] << '\t' << deriv1.computeDerivative( rawdata1[0] ) << '\t' << deriv2.computeDerivative ( rawdata1[0] ) << endl;
            //output << rawdata2[0] << '\t' << deriv1.computeDerivative( rawdata2[0] ) << '\t' << deriv2.computeDerivative ( rawdata2[0] ) << endl;
            inputData2 = filter.filter( rawdata1 );
            VectorDouble temp1;
            temp1.push_back( inputData2[0] );
            movementIndex.computeFeatures(temp1);
            
            output  << rawdata1[0] << '\t' 
                    << inputData2[0] << '\t'
                    << deriv1.computeDerivative ( inputData2[0] ) << '\t'
                    << deriv2.computeDerivative ( inputData2[0] ) << '\t'
                    << movementIndex.getFeatureVector().at(0) << endl;
            /*
            rawdata2 =  filter.filter( rawdata2 );
            VectorDouble temp2;
            temp2.push_back(rawdata2[0]);
            movementIndex.computeFeatures(temp2);
                
            output  << rawdata2[0] << '\t' 
                    << movementIndex.getFeatureVector().at(0) << endl;
            */
            /*
            for(UINT a=0; a<DataDimension; a++){
                //inputData2[a] = (rawdata1[a]+rawdata2[a])/2;
                ipnutData2[a] = rawdata[a];
            }
            */
            //load the data to the last row
            //testSample.push_back( inputData2 );
            line_counter ++ ;           //line counter;

            //if smaller than the threshold, increase the stop_sign by 1
            if( abs(inputData2[0]-inputData1[0]) <= THRESHOLD_X){
                //&& abs(inputData2[1]-inputData1[1]) <= THRESHOLD_Y
                //&& abs(inputData2[2]-inputData1[2]) <= THRESHOLD_Z){
                if(stop_sign<MAXSTOPNUM){
                    stop_sign++;
                }
                else if(stop_sign==MAXSTOPNUM){
                    //enough stop signs, these lines are all stop
                    //stop_sign = 0;
                    stop_flag = true;
                    stop_sign ++;
                }
                else
                    stop_sign ++;
            }
            else{
                //clear data;
                if(stop_flag ){
                    //previous lines are all stop. rip them off
                    stop_flag = false;
                    //stop_sign = 0;
                    break;
                }
                else{
                    //previous stop is not true. set stop_sign counters to zero and recount
                    stop_sign = 0;
                }

            }

            for (UINT j = 0; j < DataDimension; j++){
                //sample[j] = inputData3[j];
                inputData1[j] = inputData2[j];
                //inputData2[j] = inputData3[j];

            }
        }
        //if( line_counter >MINSAMPLESIZE)
        cout << "length = " << line_counter
            << "\ttokens = " << stop_sign 
            << "\tpattern length = " << line_counter - stop_sign << endl;
        stop_sign = 0;
        if (line_counter > 1){
            /*&ofs<<"************TIME_SERIES************\n";
            ofs<<"ClassID: 1\n";
            ofs<<"TimeSeriesLength: "<< line_counter <<"\n";
            ofs<<"TimeSeriesData:\n";*/
            std::streambuf *coutbuf = std::cout.rdbuf(); //save old buf
            std::cout.rdbuf(ofs.rdbuf()); //redirect std::cout to out.txt!
            testSample.print();
            std::cout.rdbuf(coutbuf); //reset to standard output again
        }
    }

    ifs.close();

    /*if( !trainingData.load("newtesting.grt") ){
        cout << "Failed to load training data!\n";
        return EXIT_FAILURE;
    }

    //Train the classifier
    if( !dtw.train( trainingData ) ){
        cout << "Failed to train classifier!\n";
        return EXIT_FAILURE;
    }

    //Save the DTW model to a file
    if( !dtw.save("DTWtest.grt") ){
        cout << "Failed to save the classifier model!\n";
        return EXIT_FAILURE;
    }

    //Load the DTW model from a file
    if( !dtw.load("DTWtest.grt") ){
        cout << "Failed to load the classifier model!\n";
        return EXIT_FAILURE;
    }*/

    //TimeSeriesClassificationData testData;

    //    infoText = "";

    //MatrixDouble stopSample;
    //testSample.setAllValues( 0 );
    //VectorDouble inputData3(DataDimension);
    //inputData2[0] = inputData2[1] = inputData2[2] = inputData2[3] = 0;

    //Use the test dataset to test the DTW model
    //double accuracy = 0


    /*while(0){//!ifs.eof()){

        testSample.clear();
        UINT line_counter = 0;
        VectorDouble sample(DataDimension);

        while(1){
            //ifs>>inputData3[0]>>inputData3[1]>>inputData3[2]>>inputData3[3];
            ifs>>inputData2[0]>>inputData2[1]>>inputData2[2];
            line_counter ++ ;
            //testSample.push_back(inputData1);
            /*VectorDouble average1(DataDimension);
            VectorDouble average2(DataDimension);

            for(UINT n = 0; n < DataDimension; n++){
                average1[n] = (inputData2[n]+inputData1[n])/2;
                average2[n] = (inputData3[n]+inputData2[n])/2;
            }

            UINT difference = abs(average2[0]-average1[0]) + abs(average2[1]-average1[1]) + abs(average2[2]-average1[2]) + abs(average2[3]-average1[3]);

            //UINT difference = abs(inputData2[0]-inputData1[0]) + abs(inputData2[1]-inputData1[1]) + abs(inputData2[2]-inputData1[2]) + abs(inputData2[3]-inputData1[3]);

            //if (difference >1){

            if(abs(inputData2[0]-inputData1[0]) <= THRESHOLD_X
                && abs(inputData2[1]-inputData1[1]) <= THRESHOLD_Y
                && abs(inputData2[2]-inputData1[2]) <= THRESHOLD_Z){
                if(stop_sign<MAXSTOPNUM){
                    stop_sign++;
                }
                else if(stop_sign==MAXSTOPNUM){
                    stop_sign = 0;
                    //testSample.push_back(inputData1);
                    break;
                }
            }
            else{
                //clear data;
                stop_sign = 0;

            }
            for (UINT j = 0; j < DataDimension; j++){
                //sample[j] = inputData3[j];
                inputData1[j] = inputData2[j];
                //inputData2[j] = inputData3[j];

            }
        }
        UINT stop;
        //MatrixDouble timeseries = testData[i].getData();
        /*
        if(i > 10){
            dtw.predict(testSample);
            stop = 0;
        }
        //Perform a prediction using the classifier
        else{
            cout << "Stop \n";
            stop = 1;
            //return EXIT_FAILURE;
        }

                //Get the predicted class label
        UINT predictedClassLabel = dtw.getPredictedClassLabel();
        double maximumLikelihood = dtw.getMaximumLikelihood();
        VectorDouble classLikelihoods = dtw.getClassLikelihoods();
        VectorDouble classDistances = dtw.getClassDistances();
        */
        //Update the accuracy
        //if( classLabel == predictedClassLabel ) accuracy++;
        //if( line_counter >MINSAMPLESIZE)
         //   cout << "length = " << line_counter <<endl;
        /*
        if (maximumLikelihood >= 0.5 && stop ==0){
            cout << "PredictedClassLabel: " << predictedClassLabel << "\tMaximumLikelihood: " << maximumLikelihood << "\tLength:" << i << endl;
        }

        else if (maximumLikelihood < 0.5 && stop == 0){
            cout << "\tMaximumLikelihood: " << maximumLikelihood << "\tNo matched pattern" << "\tLength:" << i << endl;
        }
        */
    //}
    //cout << "Test Accuracy: " << accuracy/double(testData.getNumSamples())*100.0 << "%" << endl;

    return EXIT_SUCCESS;
}
