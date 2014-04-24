#include <iostream>
#include <cv.h>
#include <highgui.h>
#include <typeinfo>
#include "package_bgs/db/IndependentMultimodalBGS.h"
using namespace cv;
using namespace std;
//videocapture code taken from http://thefreecoder.wordpress.com/2012/09/11/opencv-c-video-capture/

void process_frame(IBGS* bgs, cv::Mat &frame,cv::Mat &img_mask,cv::Mat &img_bkgmodel)
{
	//because I'm a C++ noob, turns out function calls only take copies of variable names. the & parameter
	//forces a function to take the actual object reference instead of making a copy.
	bgs->process(frame, img_mask, img_bkgmodel);
	cv::threshold(img_mask,img_mask,250,255,0);
	int dilation_size = 1;
	Mat element = cv::getStructuringElement( MORPH_RECT,
									   Size( 2*dilation_size + 1, 2*dilation_size+1 ),
									   Point( dilation_size, dilation_size ) );
	int closing_iterations = 4;
	/// erode and dilate to close blobs
	for( int i = 0; i< closing_iterations; i++ )
		{
		cv::erode(img_mask, img_mask, element);
		cv::dilate(img_mask, img_mask, element);
		}

	//blob code basically taken straight from demo code at http://stackoverflow.com/questions/8076889/tutorial-on-opencv-simpleblobdetector
	// set up the parameters (check the defaults in opencv's code in blobdetector.cpp)
	cv::SimpleBlobDetector::Params params;
	params.minDistBetweenBlobs = 50.0f;
	params.filterByInertia = false;
	params.filterByConvexity = false;
	params.filterByColor = false;
	params.filterByCircularity = false;
	params.filterByArea = true;
	params.minArea = 200.0f; //pretty easy to imagine how this might change with information that snotbot gives you about its location. that way you can filter for whale sizes.
	// ... any other params you don't want default value

	// set up and create the detector using the parameters
	cv::Ptr<cv::FeatureDetector> blob_detector = new cv::SimpleBlobDetector(params);
	blob_detector->create("SimpleBlob");

	// detect!
	vector<cv::KeyPoint> keypoints;
	blob_detector->detect(img_mask, keypoints);

	cv::drawKeypoints(frame,keypoints,frame,Scalar(0,255,0));
}


int main(int argc, char* argv[])
{
    VideoCapture cap("/home/dchen/Videos/whale_vid.avi"); // open the video file for reading

    if ( !cap.isOpened() )  // if not success, exit program
    {
         cout << "Cannot open the video file" << endl;
         return -1;
    }

    double dWidth = cap.get(CV_CAP_PROP_FRAME_WIDTH); //get the width of frames of the video
	double dHeight = cap.get(CV_CAP_PROP_FRAME_HEIGHT); //get the height of frames of the video
	Size frameSize(static_cast<int>(dWidth),static_cast<int>(dHeight));
	VideoWriter output("/home/dchen/Videos/tracked_whale_vid.avi", CV_FOURCC('P','I','M','1'), 20, frameSize, true);

	if ( !output.isOpened())
	{
		cout << "ERROR: Failed to write the video" << endl;
		return -1;
	}

    double fps = cap.get(CV_CAP_PROP_FPS); //get the frames per seconds of the video

     cout << "Frame per seconds : " << fps << endl;

    namedWindow("Original",CV_WINDOW_AUTOSIZE);
    namedWindow("Foreground",CV_WINDOW_AUTOSIZE);
    IBGS *bgs;
    bgs = new IndependentMultimodalBGS;

    while(1)
    {
    	cv::Mat frame;

        bool bSuccess = cap.read(frame); // read a new frame from video

         if (!bSuccess) //if not success, break loop
        {
                        cout << "Cannot read the frame from video file" << endl;
                       break;
        }

        cv::Mat img_mask;
        cv::Mat img_bkgmodel;
        process_frame(bgs,frame,img_mask,img_bkgmodel);
        string t = typeid(img_mask).name();
        Size s = img_mask.size();
        int rows = s.height;
        int cols = s.width;

        output.write(frame);
//        imshow("Original", frame); //show the frame in "Original" window
//        imshow("Foreground", img_mask); //show the foreground in "Foreground" window

        if(waitKey(30) == 27) //wait for 'esc' key press for 30 ms. If 'esc' key is pressed, break loop
       {
                cout << "esc key is pressed by user" << endl;
                break;
       }
    }

    delete bgs;
    return 0;

}

