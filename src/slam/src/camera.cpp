#include "slam/camera.h"
namespace slam
{
    Camera::Camera()
    {
    }
    Eigen::Vector3d Camera::cam2world(const Eigen::Vector3d& p_c, const Sophus::SE3& T_c_w)
    {
        return T_c_w.inverse() * p_c;
    }
    Eigen::Vector3d Camera::world2cam(const Eigen::Vector3d& p_w, const Sophus::SE3& T_c_w)
    {
        return T_c_w*p_w;
    }
    Eigen::Vector2d Camera::cam2pixel(const Eigen::Vector3d& p_c)
    {
        return Eigen::Vector2d(
            fx_ * p_c(0,0) / p_c(2,0) + cx_, 
            fy_ * p_c(1,0) / p_c(2,0) + cy_
        );
    }
    Eigen::Vector3d Camera::pixel2cam(const Eigen::Vector2d& p_p, double depth)
    {
        return Eigen::Vector3d(
            (p_p(0,0)-cx_)*depth/fx_,
            (p_p(1,0)-cy_)*depth/fy_,
            depth
        );
    }
    Eigen::Vector3d Camera::pixel2world(const Eigen::Vector2d& p_p, const Sophus::SE3& T_c_w, double depth)
    {
        return cam2world(pixel2cam(p_p,depth),T_c_w);
    }
    Eigen::Vector2d Camera::world2pixel(const Eigen::Vector3d& p_w, const Sophus::SE3& T_c_w)
    {
        return cam2pixel(world2cam(p_w,T_c_w));
    }
}
