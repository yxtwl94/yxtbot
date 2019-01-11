#include<ros/ros.h>
#include<topic_demo/sensor.h>
#include <vector> 

int main(int argc,char** argv){

    ros::init(argc, argv, "talker");
    ros::NodeHandle nh;
    topic_demo::sensor msg;
    //initial para
    float t=0.0;
    msg.v=sin(t);
    msg.a=0;
    msg.state="working";

    std::vector<float> a; //use vector to store the velocity
    
    ros::Publisher pub = nh.advertise<topic_demo::sensor>("my_info", 1);  
    ros::Rate loop_rate(1.0);
    while(ros::ok()){

        t+=0.1;
        msg.v=sin(t);  
        //to calculate a
        if(a.size()==0){
            a.push_back(msg.v);
            msg.a=0;

        }   
        else if(a.size()==1){
            a.push_back(msg.v);
            msg.a=a[1]-a[0];
        }
        else{
            a.push_back(msg.v);
            a.erase(a.begin());
            msg.a=a[1]-a[0];
        }
                    

        ROS_INFO("Talker::t=%f,v=%f",t,msg.v);  //wie cout
        pub.publish(msg);
        loop_rate.sleep();

    }
    return 0;

}