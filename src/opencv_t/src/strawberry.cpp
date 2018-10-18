#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
using namespace cv;

int main(int argc, char *argv[])
{
    UMat strawberry, Binary;
    Mat B, G, R;
    std::vector<Mat> channels;
//    Vec3i lower,upper;
//    lower = (1,1,100);
//    upper = (40,40,255);
    imread("strawberry.jpg", IMREAD_COLOR).copyTo(strawberry);
    inRange(strawberry,Scalar(1,1,100),Scalar(40,40,255),Binary);
    split(strawberry,channels);
    B = channels[0];
    G = channels[1];
    R = channels[2];
    imshow("blue",B);
    imshow("green",G);
    imshow("red",R);
    imshow("strawberry",Binary);
    waitKey();
    return 0;
}