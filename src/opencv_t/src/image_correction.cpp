#include<iostream>
#include <opencv2/opencv.hpp>
#include<opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
using namespace cv;

int main(int argc, char *argv[])
{
    Mat img, img_correct, gray, transform;
    int r;
    Point center;
    std::vector<cv::Vec3f> circles;
    std::vector<cv::Point2f> corners(4);
    std::vector<cv::Point2f> corners_trans(4);
    img = imread(argv[1], CV_LOAD_IMAGE_COLOR);
    pyrMeanShiftFiltering(img,img_correct,5,10);
    cvtColor(img_correct, gray, COLOR_RGB2GRAY);
    HoughCircles(gray, circles, cv::HOUGH_GRADIENT,1,50,100,100,0,0);
    for(auto i = 0; i < circles.size();i++)
    {
        center = Point(cvRound(circles[i][0]),cvRound(circles[i][1]));
        r = cvRound(circles[i][2]);
        //circle(img_correct,center,3,Scalar(0,255,0),-1,8,0);
        //circle(img_correct,center,r,Scalar(155,25,255),2,8,0);
    }
    corners[0] = center;
    corners[1] = Point2f(center.x-r,center.y);
    corners[2] = Point2f(center.x,center.y-r);
    corners[3] = Point2f(center.x+r,center.y);
    corners_trans[0] = Point2f(190,100);
    corners_trans[1] = Point2f(190-r,100);
    corners_trans[2] = Point2f(190,100-r);
    corners_trans[3] = Point2f(190+r,100);
    transform = getPerspectiveTransform(corners,corners_trans);
    warpPerspective(img, img_correct, transform, img.size());
    imshow("img",img);
    imshow("img_correct",img_correct);
    waitKey();
    return 0;
}