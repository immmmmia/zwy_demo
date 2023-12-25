# zwy_demo
#设置环境变量

source ~/catkin_ws/devel/setup.bash

#检验环境变量是否设置成功

echo $ROS_PACKAGE_PATH

#launch文件

roslaunch t4ac_global_planner_ros planning.launch

roslaunch t4ac_global_planner_ros initialization.launch
