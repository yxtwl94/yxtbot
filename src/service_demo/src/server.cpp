#include "ros/ros.h"
#include <string>
#include<service_demo/greeting.h>

#include <sstream>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
bool handle_function(service_demo::greeting::Request &req ,service_demo::greeting::Response &res){  
	//auto created the Request and Response when create the .srv file

	ROS_INFO("Request from %s with age %d",req.name.c_str(),req.age);
	res.feedback="Hi "+req.name+"I'm Server";
	return true;
}

int main(int argc, char *argv[])
{
	
	ros::init(argc, argv, "server");
	/**
	 * NodeHandle is the main access point to communications with the ROS system.
	 * The first NodeHandle constructed will fully initialize this node, and the last
	 * NodeHandle destructed will close down the node.
	 */
	ros::NodeHandle nh;
	ros::ServiceServer service=nh.advertiseService("greeting",handle_function);


	
	ros::spin();

	return 0;
}