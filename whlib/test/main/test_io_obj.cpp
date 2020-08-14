#include <iostream>
#include "../../include/utils/io.h"
#include "../../include/basic/point_cloud.h"
using namespace std;
using namespace Eigen;
using namespace wh::basic;
using namespace wh::utils;
int main()
{
    Point_cloud point_cloud;
    load_point_cloud_obj("test.obj", &point_cloud);
    cout << point_cloud << endl;
    cout << point_cloud.size << endl;
    cout << point_cloud.get_geometric_center() << endl;
}