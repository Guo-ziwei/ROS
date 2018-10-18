#include <iostream>
#include <ros/ros.h>
#include <ceres/ceres.h>
#include <opencv2/core/core.hpp>
#include <chrono>

using namespace std;

struct CostFunctor
{
    CostFunctor (double x, double y) : _x(x), _y(y) {}//残差的计算
    template <typename T>
    bool operator()(
        const T* const abc, //有三维
        T* residual) const //残差
        {
            //y-exp(ax^w+bx+c)
            residual[0] = T(_y) - ceres::exp(abc[0]*T(_x) * T(_x) + abc[1]*T(_x)+abc[2]);

            return true;
        }
        const double _x, _y;
};

int main(int argc, char *argv[])
{
    /* code for main function */
    double a =1.0, b=2.0,c=1.0;//真实参数
    int N = 100;    //数据点
    double w_sigma = 1.0;//噪声sigma值
    cv::RNG rng;
    double abc[3] = {0,0,0};

    vector<double> x_data, y_data;
    cout<<"generating data:"<<endl;
    for(int i=0; i<N; i++)
    {
        double x = i/100.0;
        x_data.push_back(x);
        y_data.push_back(exp(a*x*x + b*x +c )+ rng.gaussian(w_sigma));
        cout<<x_data[i]<<" "<<y_data[i]<<endl;
    }

    //构建最小二乘问题
    ceres::Problem problem;
    for(int i=0; i<N; i++)
    {
        ceres::CostFunction* cost_function = new ceres::AutoDiffCostFunction<CostFunctor, 1, 3>(new CostFunctor(x_data[i],y_data[i]));
        problem.AddResidualBlock(cost_function,NULL,abc);
    }

    ceres::Solver::Options options;
    options.linear_solver_type = ceres::DENSE_QR;
    options.minimizer_progress_to_stdout=true;
    ceres::Solver::Summary summary;
    chrono::steady_clock::time_point t1 = chrono::steady_clock::now();
    ceres::Solve(options,&problem,&summary);
    chrono::steady_clock::time_point t2 = chrono::steady_clock::now();
    chrono::duration<double> time_used = chrono::duration_cast<chrono::duration<double>>(t2-t1);
    cout<<"solve time cost = "<<time_used.count()<<"s"<<endl;

    cout<<summary.BriefReport()<<endl;
    cout<<"estimate a b c = ";
    for(auto a:abc) cout<<a<<" ";
    cout<<endl;
    
    return 0;
}