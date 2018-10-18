#include<ros/ros.h>
#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
int main(int argc, char *argv[])
{
    cv::Mat img = cv::imread(argv[1], -1);
    if(img.empty()) return -1;
    cv::namedWindow("Example",cv::WINDOW_AUTOSIZE);
    cv::imshow("Example",img);
    cv::waitKey(0);
    cv::destroyWindow("Example");
    return 0;
}