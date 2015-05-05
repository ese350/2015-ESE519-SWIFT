#include "GRT/GRT.h"
#include <iostream>
#include <fstream>
using namespace GRT;


const int MAXSTOPNUM = 5;
const int MINSAMPLESIZE = 15;
const int THRESHOLD_X = 3;
const int THRESHOLD_Y = 3;
const int THRESHOLD_Z = 3;
const int THRESHOLD_FEATURE = 10;
const int WINDOW_SIZE = 15;

deque< array<double,3> > fifo;

int main (int argc, const char * argv[])
{
    //Create a new DTW instance and dtw type pipeline
    DTW dtw;

        //dtw.enableNullRejection( true );

        //dtw.setNullRejectionCoeff( 3 );

        //dtw.enableTrimTrainingData(true, 0.1, 90);

       //dtw.setOffsetTimeseriesUsingFirstSample(true);

    //Load some training data to train the classifier - the DTW uses TimeSeriesClassificationData
    //TimeSeriesClassificationData trainingData;

    std::ifstream ifs ("data2.txt");
    std::ofstream ofs;
    ofs.open("trainingsamples.grt");
    MatrixDouble testSample;
    testSample.setAllValues( 0 );
    UINT DataDimension = 3;
    //UINT stop_sign = 0;
    //int stop_counter  = 0;
    //bool stop_flag = false;
    bool pattern_flag = false;
    //double  inputData1[3] = {0,0,0};
            //inputData2[3] = {0,0,0};
    VectorDouble inputData (DataDimension);
    VectorDouble rawdata(DataDimension);
    //VectorDouble rawdata2(DataDimension);
    double featuredata;
    UINT ROW_counter = 0;


    //Derivative
    Derivative deriv1(Derivative::FIRST_DERIVATIVE);
    Derivative deriv2(Derivative::SECOND_DERIVATIVE);
    MovingAverageFilter filter ( 20, 3);

    MovementIndex movementIndex( 15, 3);
    ofstream output("prepossessing.csv");

    double featured_diff_direction1 = 1;
    double feature_diff_direction2;
    double featuredata1 = 0;
    double featuredata2 ;
    double vertex_number = 0;
    int total_counter = 0;

    while(!ifs.eof()){
        //stop_sign = 0;
        //stop_flag = false;
        testSample.clear();
        UINT line_counter = 0;
        UINT pattern_counter = 0;
        UINT patternstart_row = 0;
        UINT patternend_row = 0;

        while(!ifs.eof()){
            //get the input data
            ifs>>rawdata[0]>>rawdata[1]>>rawdata[2] ; //>>rawdata2[0]>>rawdata2[1]>>rawdata2[2];


            ROW_counter ++;
            //output << rawdata1[0] << '\t' << deriv1.computeDerivative( rawdata1[0] ) << '\t' << deriv2.computeDerivative ( rawdata1[0] ) << endl;
            //output << rawdata2[0] << '\t' << deriv1.computeDerivative( rawdata2[0] ) << '\t' << deriv2.computeDerivative ( rawdata2[0] ) << endl;
            inputData = filter.filter( rawdata );

            //FIFO, compensaste for the 15 frame delays
            array<double,3> temp;
            temp[0] = inputData[0];
            temp[1] = inputData[1];
            temp[2] = inputData[2];
            fifo.push_back(temp);
            total_counter ++;
            //VectorDouble temp1;
            //temp1.push_back( inputData[0] );

            movementIndex.computeFeatures(inputData);
            VectorDouble featureVector = movementIndex.getFeatureVector();

            //output  << rawdata[0] << ' ' << rawdata[1] << ' '<< rawdata[2] << ' '
            //output << inputData[0] << ' '<< inputData[1] << ' ' << inputData[2] << ' ';
                    // << deriv1.computeDerivative ( inputData2[0] ) << '\t'
                    // << deriv2.computeDerivative ( inputData2[0] ) << '\t'
                    //<< movementIndex.getFeatureVector().at(0) <<'\t';

            featuredata2 = movementIndex.getFeatureVector().at(0)+movementIndex.getFeatureVector().at(1) + movementIndex.getFeatureVector().at(2);


            //cout << "FeatureVector: ";
            for(UINT j=0; j<featureVector.size(); j++){
                //output << featureVector[j]<<' ';
                //if( j != featureVector.size()-1 )
                //   output << "\t";
            }
            //output<<endl;
            //output << featuredata <<' ';

            // slope == 0
            if(featuredata2 - featuredata1 > 0){
                feature_diff_direction2 = 1;
                featuredata1 = featuredata2;
            }
            else {
                feature_diff_direction2 = 0;
                featuredata1 = featuredata2;
            }

            if(feature_diff_direction2 != featured_diff_direction1){
                vertex_number ++;
                featured_diff_direction1 = feature_diff_direction2;
            }
            else {
                featured_diff_direction1 = feature_diff_direction2;
            }

            if (pattern_flag == false && featuredata2 > THRESHOLD_FEATURE && vertex_number < 2){
                //testSample.push_back(inputData);
                //output << endl;
                pattern_flag = true;
                pattern_counter ++ ;
                patternstart_row = ROW_counter;
                featuredata2 = 0;
            }
            else if (pattern_flag == true && featuredata2 > THRESHOLD_FEATURE && vertex_number < 2){
                //testSample.push_back(inputData);
                //output  << endl;
                pattern_flag = true ;
                pattern_counter ++ ;
                featuredata2 = 0;
            }

            else if (featuredata2 < THRESHOLD_FEATURE || vertex_number == 2){
                pattern_flag = false ;
                //output  << endl;
                pattern_counter ++ ;
                patternend_row = ROW_counter;
                vertex_number = 0;
                featuredata2 = 0;
                break;
            }
        }

        if (pattern_counter > MINSAMPLESIZE ){
            cout << "length = " << pattern_counter << "\tstart row: "<< patternstart_row << "\tend row: "<< patternend_row<< endl;
            output<<"startline"<<total_counter-15<<endl;
            output<<"************TIME_SERIES************\n";
            output<<"ClassID: 1\n";
            output<<"TimeSeriesLength: "<< pattern_counter <<"\n";
            output<<"TimeSeriesData:\n";

            for(int i=0; i<pattern_counter; i++ ) {
                output  << fifo.front().at(0) << '\t'
                        << fifo.front().at(1) << '\t'
                        << fifo.front().at(2) << endl;
                fifo.pop_front();
            }

            /*
            std::streambuf *coutbuf = std::cout.rdbuf(); //save old buf
            std::cout.rdbuf(ofs.rdbuf()); //redirect std::cout to out.txt!
            testSample.print();
            std::cout.rdbuf(coutbuf); //reset to standard output again
            */
        }
        else {
            //output << "discard "<< pattern_counter <<endl;
            for( int i=0; i<pattern_counter ; i++)
                fifo.pop_front();
        }
    }

    cout << "fifo size: " << fifo.size() << endl;
    output.close();
    ifs.close();


    return EXIT_SUCCESS;
}
