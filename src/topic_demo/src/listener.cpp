#include<ros/ros.h>
#include<topic_demo/sensor.h>

void callback(const topic_demo::sensor::ConstPtr &msg){

     //float belongs to c+++ and Float32/64 belongs to std_msgs!!
     //direct use small float instead of std_msgs::Float32!!
     //msg is like a array, it cotains the adress ans use "->"to get value,but can't change!
    
    ROS_INFO("Listener:a is %f,state is %s",msg->a,msg->state.c_str());
    

}

int main(int argc,char** argv){

    ros::init(argc, argv, "listener");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("my_info", 1, callback);

    ros::spin();
    return 0;
}