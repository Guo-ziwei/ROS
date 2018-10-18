#include <opencv2/opencv.hpp>
#include <chrono>
using namespace cv;
using namespace std;

int main(int argc, char *argv[])
{
    UMat img, gray;
    
    imread("rgb.jpg", IMREAD_COLOR).copyTo(img);
    chrono::steady_clock::time_point t1 = chrono::steady_clock::now();
    cvtColor(img, gray, COLOR_RGB2GRAY);
    GaussianBlur(gray, gray, Size(7,7), 1.5);
    Canny(gray, gray, 0, 50);
    imshow("rgb",img);
    imshow("edge", gray);
    chrono::steady_clock::time_point t2 = chrono::steady_clock::now();
    chrono::duration<double> time_used = chrono::duration_cast<chrono::duration<double>>(t2-t1);
    cout<<"solve time cost = "<<time_used.count()<<"s"<<endl;
    waitKey();

    
    return 0;
}