#include<iostream>
#include<opencv2/core/core.hpp>
#include<opencv2/highgui/highgui.hpp>
#include<opencv2/features2d/features2d.hpp>

using namespace std;

int main(int argc, char *argv[])
{
    if(argc != 3)
    {
        cout<<"usage:feature_extraction img1 img2"<<endl;
        return 1;
    }
    
    cv::Mat img_1 = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);
    cv::Mat img_2 = cv::imread(argv[2], CV_LOAD_IMAGE_COLOR);

    //initial
    vector<cv::KeyPoint> keypoints_1, keypoints_2;
    cv::Mat descriptors_1, descriptors_2;
    cv::Ptr<cv::ORB> orb = cv::ORB::create(500, 1.2f,8,31,0,2,cv::ORB::HARRIS_SCORE,31,20);

    //检测Oriented FAST角点位置
    orb->detect(img_1,keypoints_1);
    orb->detect(img_2,keypoints_2);

    //根据角点位置计算BRIEF描述子
    orb->compute(img_1,keypoints_1,descriptors_1);
    orb->compute(img_2,keypoints_2,descriptors_2);
    cv::Mat outimg1;
    cv::drawKeypoints(img_1,keypoints_1,outimg1,cv::Scalar::all(-1),cv::DrawMatchesFlags::DEFAULT);
    cv::imshow("ORB_feature",outimg1);

    //对两幅图像BRIEF描述子进行匹配，使用Hamming距离
    vector<cv::DMatch>matches;
    cv::BFMatcher matcher(cv::NORM_HAMMING);
    matcher.match(descriptors_1,descriptors_2,matches);
    double min_dist=10000,max_dist=0;
    //找出匹配点间的最小距离和最大距离，即最相似的和最不相似的两组点之间的距离
    for(int i = 0; i<descriptors_1.rows;i++)
    {
        double dist = matches[i].distance;
        if(dist<min_dist) min_dist = dist;
        if(dist>max_dist) max_dist = dist;

    }
    cout<<"max dist:"<<max_dist<<endl;
    cout<<"min dist:"<<min_dist<<endl;;
    //当描述子之间的距离大于两倍的最小距离时，即认为匹配有误
    //但有时候最小距离会非常小，设置一个经验值作为下限
    vector<cv::DMatch>good_matches;
    for(int i=0;i<descriptors_1.rows;i++)
    {
        if(matches[i].distance <= max(2*min_dist,30.0))
        {
            good_matches.push_back(matches[i]);
        }
    }
    //绘制匹配结果
    cv::Mat img_match;
    cv::Mat img_goodmatch;
    cv::drawMatches(img_1, keypoints_1,img_2, keypoints_2, matches, img_match);
    cv::drawMatches(img_1, keypoints_1,img_2, keypoints_2, good_matches, img_goodmatch);
    cv::imshow("all point",img_match);
    cv::imshow("optimization point",img_goodmatch);
    cv::waitKey(0);
    
    return 0;
}
