#ifndef CAMERA_H
#define CAMERA_H

#include "slam/include.h"

namespace slam
{
class Camera
{
public:
    typedef std::shared_ptr<Camera> Ptr;
    double fx_, fy_, cx_, cy_;
    double depth_scale_;
    Camera();
    Camera(double fx, double fy, double cx, double cy, double depth_scale=0.0): fx_(fx),fy_(fy),cx_(cx),cy_(cy),depth_scale_(depth_scale){}
    //virtual ~Camera();

Eigen::Vector3d cam2world(const Eigen::Vector3d& p_c, const Sophus::SE3& T_c_w);
Eigen::Vector3d world2cam(const Eigen::Vector3d& p_w, const Sophus::SE3& T_c_w);
Eigen::Vector2d cam2pixel(const Eigen::Vector3d& p_c);
Eigen::Vector3d pixel2cam(const Eigen::Vector2d& p_p, double depth=1);
Eigen::Vector3d pixel2world(const Eigen::Vector2d& p_p, const Sophus::SE3& T_c_w, double depth=1);
Eigen::Vector2d world2pixel(const Eigen::Vector3d& p_w, const Sophus::SE3& T_c_w);
};

}
#endif