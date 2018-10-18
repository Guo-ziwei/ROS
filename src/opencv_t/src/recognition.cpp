#include "opencv_t/recognition.h"
#include<ros/ros.h>
using namespace cv;
using namespace std;

double distance(Point a, Vec4i line)
{
    int A, B, C;
    double dis;
    A = line[3] - line[1];
    B = line[0] - line[2];
    C = line[2]*line[1] - line[0]*line[3];
    dis = abs(A*a.x + B*a.y + C) / sqrt(A*A + B*B);
    return dis;
}

double Angle(Point center, Point a, Point b)
{
    double ma_x = a.x - center.x;
    double ma_y = a.y - center.y;
    double mb_x = b.x - center.x;
    double mb_y = b.y - center.y;
    double v1 = (ma_x * mb_x) + (ma_y * mb_y);
    double ma_val = sqrt(ma_x*ma_x + ma_y*ma_y);
    double mb_val = sqrt(mb_x*mb_x + mb_y*mb_y);
    double cosM = v1 / (ma_val * mb_val);
    double angle = acos(cosM);
    if(b.x > center.x) angle = 2*CV_PI - angle;
    return angle;
}

int main(int argc, char *argv[])
{
    Mat img, gray, dst, img_cut,img_correct,dst_line;
    vector<int> r;
    int k;
    double e,temp(10.0),dis,angle;
    vector<cv::Point> center;
    Vec4i l;
    Vec4i j;
    vector<cv::Vec3f> circles;
    vector<cv::Vec4i> lines;
    img = imread(argv[1], CV_LOAD_IMAGE_COLOR);
    GaussianBlur(img, img_correct, Size(7,7), 1.5);
    //pyrMeanShiftFiltering(img,img_correct,5,10);
    cvtColor(img_correct, gray, COLOR_RGB2GRAY);
    
    Canny(gray, dst,100,5);
    adaptiveThreshold(gray, dst_line, 255, 1, 1, 15, 5);
    //Canny(gray, gray, 100, 40, 3, true);
    imshow("dst_line",dst_line);
    HoughCircles(dst, circles, cv::HOUGH_GRADIENT,1,15,100,100,4,0);
    
    
    for(auto i = 0; i < circles.size();i++)
    {
        center.push_back(Point(cvRound(circles[i][0]),cvRound(circles[i][1])));
        r.push_back(cvRound(circles[i][2]));
        //circle(dst,center[i],3,Scalar(155,25,255),-1,8,0);
        //circle(dst,center[i],r[i],Scalar(155,25,255),2,8,0);
        ROS_INFO("circlex: %d",cvRound(circles[i][0]));
        ROS_INFO("circley: %d",cvRound(circles[i][1]));
        ROS_INFO("circler: %d",r[i]);
    }
    
    std::vector<int>::iterator p =min_element(r.begin(),r.end());
    k = std::distance(r.begin(),p);
    //img_cut=dst(Rect(center.x-r,center.y-r,2*r,2*r));
    //imshow("img_cut", img_cut);
    HoughLinesP(dst_line, lines, 1,CV_PI/180,60,20,0);
    if(lines.empty()) return 0;
    else
    {
        for(auto i = 0; i < lines.size();i++)
            {
            l=lines[i];
            int x0,y0,x1,y1;
            dis = distance(center[k],l);
            if(dis<r[k]){
                if(dis < temp) {
                    temp = dis;
                    j = lines[i];
                    line(dst,Point(j[0],j[1]),Point(j[2],j[3]),Scalar(155,25,255),3,LINE_AA);
                    ROS_INFO("distance: %f",temp);
                    }
                }
            }
    }
    imshow("edge", dst);
    circle(dst,center[k],3,Scalar(155,25,255),-1,8,0);
    circle(dst,center[k],r[k],Scalar(155,25,255),2,8,0);
    line(dst,center[k],Point(j[2],j[3]),Scalar(155,25,255),3,LINE_AA);
    angle = Angle(center[k],Point(center[k].x,center[k].y+10),Point(j[2],j[3]));
    ROS_INFO("angle: %f",angle);
    double value = -0.50 + angle*3.50/2/CV_PI;
    ROS_INFO("value: %f",value);
    imshow("rgb",dst);
    waitKey();
    return 0;
}