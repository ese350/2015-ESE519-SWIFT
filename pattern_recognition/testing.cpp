#include "GRT/GRT.h"
#include <iostream>
#include <fstream>
#include <sstream>
//
//  Hello World server in C++
//  Binds REP socket to tcp://*:5555
//  Expects "Hello" from client, replies with "World"
//
#include <zmq.hpp>
#include <string>
#include <iostream>
#ifndef _WIN32
#include <unistd.h>
#else
#include <windows.h>

#define sleep(n)    Sleep(n)
#endif

using namespace GRT;

//const int MAXSTOPNUM = 8;
//const int MINSAMPLESIZE = 80;
const int FEATURETHRESHOLD_XYZ = 80;
//const int FEATURETHRESHOLD_X = 10;
//const int FEATURETHRESHOLD_Y = 10;
//const int FEATURETHRESHOLD_Z = 10;
const int windowsize_filter = 15;
const int windowsize_motionindex = 20;
const int MINPATTERNSIZE = 10;

deque < array<double,3> > fifo;

int main (int argc, const char * argv[])
{       
    //Create a new DTW instance and dtw type pipeline
    DTW dtw;
        
    zmq::context_t context (1);
    zmq::socket_t socket (context, ZMQ_REP);
    socket.bind ("tcp://*:5555");

    dtw.enableNullRejection( true );
    
    dtw.setNullRejectionCoeff( 3 );

    //dtw.enableTrimTrainingData(true, 0.1, 90);
    
    //dtw.setOffsetTimeseriesUsingFirstSample(true);

    //Load some training data to train the classifier - the DTW uses TimeSeriesClassificationData
    TimeSeriesClassificationData trainingData;
    /*
    if( !trainingData.load("newtesting.grt") ){
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
    */
    //Load the DTW model from a file
    if( !dtw.load("DTWtest.grt") ){
        cout << "Failed to load the classifier model!\n";
        return EXIT_FAILURE;
    }

    std::ifstream ifs ("data.txt");
    MatrixDouble testSample;
    testSample.setAllValues( 0 );
    UINT DataDimension = 3;
    bool pattern_flag = false;
    VectorDouble inputData (DataDimension);
    VectorDouble rawdata(DataDimension);
    VectorDouble patterninput(DataDimension);
    double featured_diff_direction1 = 1;
    double feature_diff_direction2;
    double featuredata1 = 0;
    double featuredata2;
    //UINT threshold_satisfy = 0;
    UINT ROW_counter = 0;

    Derivative deriv1(Derivative::FIRST_DERIVATIVE);
    Derivative deriv2(Derivative::SECOND_DERIVATIVE);
    DoubleMovingAverageFilter filter ( windowsize_filter, DataDimension);

    MovementIndex movementIndex( windowsize_motionindex, DataDimension);
    ofstream output("prepossessing.csv");

    cout<< "Configuration Complete. \n Start Moving!!!\n";
    while(!ifs.eof()){

        testSample.clear();
        //UINT line_counter = 0;
        UINT pattern_counter = 0;
        UINT patternstart_row = 0;
        UINT patternend_row = 0;
        UINT feature_deriv_number = 0;
        //double deriv_feature; 
        double vertex_number = 0;
        while(!ifs.eof()){
            //get the input data
            //ifs>>rawdata[0]>>rawdata[1]>>rawdata[2] ; //>>rawdata2[0]>>rawdata2[1]>>rawdata2[2];
            
            //input from socket
            zmq::message_t request;

            //  Wait for next request from client
            socket.recv (&request);
            std::string rpl = std::string( static_cast<char*>(request.data()), request.size() );
            //std::cout << rpl  << std::endl;
            std::istringstream sstream(rpl);
            sstream >> rawdata[0]>>rawdata[1]>>rawdata[2] ;
            //  Send reply back to client
            zmq::message_t reply (5);
            memcpy ((void *) reply.data (), "World", 5);
            socket.send (reply);

            //row_counter increments
            ROW_counter ++;
            
            inputData = filter.filter( rawdata );

            array<double,3> temp;
            temp[0] = inputData[0];
            temp[1] = inputData[1];
            temp[2] = inputData[2];
            fifo.push_back(temp);
 
            //VectorDouble temp1;
            //temp1.push_back( inputData[0] );
            movementIndex.computeFeatures(inputData);
            VectorDouble featureVector = movementIndex.getFeatureVector();


            output  << rawdata[0] << ',' << rawdata[1] << ','<< rawdata[2] << ','
                    << inputData[0] << ','<< inputData[1] << ',' << inputData[2] << ',';
                    //<< deriv1.computeDerivative ( inputData2[0] ) << '\t'
                    /*
                    << deriv2.computeDerivative ( inputData[0] ) * 20 << ','
                    << deriv2.computeDerivative ( inputData[1] ) * 20 << ','
                    << deriv2.computeDerivative ( inputData[2] ) * 20 << ',';
                    */
                    //<< movementIndex.getFeatureVector().at(0) <<'\t';

            //featuredata = movementIndex.getFeatureVector();

            
            for(UINT j=0; j<featureVector.size(); j++){
                output << featureVector[j]<<',';
                //if( j != featureVector.size()-1 ) 
                 //   output << "\t";
            }
            //output<<endl;
            
            for(UINT i=0; i<featureVector.size();i++){
                featuredata2 = featuredata2 + featureVector[i];
            }

            //deriv_feature = deriv1.computeDerivative ( featuredata ) * 20;

            //if (deriv_feature <= 20 && deriv_feature >= -20){
            //    feature_deriv_number ++;
            // }

            //output << deriv1.computeDerivative ( featuredata ) * 20<< ',';

            output <<featuredata2<<',';
            
            if(featuredata2 - featuredata1 > 0){
                feature_diff_direction2 = 1;
                featuredata1 = featuredata2;
            }

            else 
                { feature_diff_direction2 = 0;
                  featuredata1 = featuredata2;
            }
            
            if(feature_diff_direction2 != featured_diff_direction1){
                vertex_number ++;
                featured_diff_direction1 = feature_diff_direction2;
            }
            
            else 
                { featured_diff_direction1 = feature_diff_direction2;
            }
            //the starting of the pattern and the feature is larger than threshold and the first action is not finished,
            //then start to put the filtered data into the pattern testing matrix
            if (pattern_flag == false && featuredata2 >= FEATURETHRESHOLD_XYZ && vertex_number <2){
                output <<-50 <<endl;
                pattern_flag = true;
                pattern_counter ++ ;
                featuredata2 = 0;
                patternstart_row = ROW_counter;

            }
            
            //already started a pattern but not satisy the break conditions, then continue putting movement data into matrix
            else if (pattern_flag == true && featuredata2 >= FEATURETHRESHOLD_XYZ && vertex_number <2) {
                output << -50 <<endl;
                pattern_flag = true ;
                featuredata2 = 0;
                pattern_counter ++ ;
            }

            //when one of the break conditions is satisfied
            else if (featuredata2 < FEATURETHRESHOLD_XYZ || vertex_number == 2){
                 pattern_flag = false ;
                 output << -400 <<endl;
                 featuredata2 = 0;
                 pattern_counter ++;
                 //pattern_counter = 0;
                patternend_row = ROW_counter;
                //feature_deriv_number = 0;
                vertex_number =0;
                 break;
            }

        }

        /*if (pattern_counter > 35){
            cout << "length = " << pattern_counter << "\tstart row: "<< patternstart_row << "\tend row: "<< patternend_row<< endl;
            ofs<<"************TIME_SERIES************\n";
            ofs<<"ClassID: 1\n";
            ofs<<"TimeSeriesLength: "<< pattern_counter <<"\n";
            ofs<<"TimeSeriesData:\n";
            std::streambuf *coutbuf = std::cout.rdbuf(); //save old buf
            std::cout.rdbuf(ofs.rdbuf()); //redirect std::cout to out.txt!
            testSample.print();
            std::cout.rdbuf(coutbuf); //reset to standard output again
        }*/

            /*if(pattern_counter >MINPATTERNSIZE){
            UINT pattern_columnnumber;
            UINT pattern_rownumber;
            pattern_columnnumber = testSample.getNumCols();
            pattern_rownumber = testSample.getNumRows();
            cout<<"pattern columns: " <<pattern_columnnumber <<"\t pattern rows: "<< pattern_rownumber<<endl;
            }*/

            if(pattern_counter > MINPATTERNSIZE ){
                double origin[3] = {0,0,0};
                for (UINT j=0; j<pattern_counter; j++){
                    if(j==0){
                        origin[0] = fifo.front().at(0);
                        origin[1] = fifo.front().at(1);
                        origin[2] = fifo.front().at(2);
                    }
                    for (UINT i=0; i<DataDimension; i++){
                        patterninput[i] = fifo.front().at(i) - origin[i];
                    }
                    fifo.pop_front ();
                    testSample.push_back(patterninput);
                }

                dtw.predict(testSample);

                UINT predictedClassLabel = dtw.getPredictedClassLabel();
                double maximumLikelihood = dtw.getMaximumLikelihood();
                VectorDouble likely = dtw.getClassLikelihoods();
                VectorDouble classDistances = dtw.getClassDistances();

                cout << "PredictedClassLabel: "; //<< predictedClassLabel 
                switch(predictedClassLabel){
                    case 1: cout<<"left ";break;
                    case 2: cout<<"right ";break;
                    case 3: cout<< "up ";break;
                    case 4: cout<< "down ";break;
                }
                cout << "\tMaximumLikelihood: " << maximumLikelihood 
                //<< "\tlikelyC1: " << likely[0]
                //<< "\tlikelyC2: " << likely[1]
                //<< "\tlikelyC3: " << likely[2]
                //<< "\tclassDistance: " << classDistances
               // << "\tLength:" << pattern_counter 
                //<< "\tstart row: "<< patternstart_row - 15 << "\tend row: "<< patternend_row -15<< endl;
                <<endl;
            }
            
            //if(pattern_counter < MINPATTERNSIZE){
            else {
                for (UINT j=0; j<pattern_counter; j++){
                   fifo.pop_front(); 
                }
            }
            //stop = 0;
        //}
        //Perform a prediction using the classifier
        //else{
            //cout << "SORRY WE CANNOT REGONIZE YOUR PATTERN \n" <<endl;
            //stop = 1;
            //return EXIT_FAILURE;
        //}
        
    }
    cout << "fifo size" << fifo.size() <<endl;
    ifs.close();

    return EXIT_SUCCESS;
}