#include "ros/ros.h"
#include "std_msgs/String.h"
#include<service_demo/greeting.h>

int main(int argc, char *argv[])
{
	/**
	 * The ros::init() function needs to see argc and argv so that it can perform
	 * any ROS arguments and name remapping that were provided at the command line.
	 * For programmatic remappings you can use a different version of init() which takes
	 * remappings directly, but for most command-line programs, passing argc and argv is
	 * the easiest way to do it.  The third argument to init() is the name of the node.
	 *
	 * You must call one of the versions of ros::init() before using any other
	 * part of the ROS system.
	 */
	ros::init(argc, argv, "client");

	/**
	 * NodeHandle is the main access point to communications with the ROS system.
	 * The first NodeHandle constructed will fully initialize this node, and the last
	 * NodeHandle destructed will close down the node.
	 */
	ros::NodeHandle nh;
	ros::ServiceClient client=nh.serviceClient<service_demo::greeting>("greeting");
	service_demo::greeting srv;
	srv.request.name="yxt";
	srv.request.age=24;


	if(client.call(srv)){

		ROS_INFO("Feedback from server :%s",srv.response.feedback.c_str());

	}
	else{

		ROS_ERROR("Failed to call service. ");
		return 1;

	}
	
	return 0;

}