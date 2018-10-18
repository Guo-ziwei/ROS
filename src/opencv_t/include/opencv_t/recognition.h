#ifndef RECOGNITION_H
#define RECOGNITION_H

#include <opencv2/opencv.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <cmath>

double distance(cv::Point a, cv::Vec4i line);
double Angle(cv::Point center, cv::Point a, cv::Point b);
#endif