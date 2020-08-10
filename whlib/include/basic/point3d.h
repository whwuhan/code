#ifndef POINT3D_H
#define POINT3D_H
#include <iostream>
#include "../../deps/eigen-3.3.7/Eigen/Dense"
namespace wh
{
    namespace basic
    {   
        //三维点
        typedef struct Point3d
        {
            Eigen::Vector3d data;
            Point3d();
            Point3d(double x, double y, double z);
            Point3d operator+(Point3d& point);
            Point3d operator-(Point3d& point);
            Point3d operator*(Point3d& point);
            Point3d operator/(Point3d& point);
            Point3d operator[](int i);
            friend std::ostream& operator<<(std::ostream& ost, const Point3d point3d);
        } POINT3D;
        //注意这里要声明友元函数，结构体里面不是声明这个函数，而是告诉说明这个是友元函数
        std::ostream& operator<<(std::ostream& ost, const Point3d point3d);
    }
}

#endif