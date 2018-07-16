#include "ros/ros.h"
#include <sstream>
#include <bits/stdc++.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/exact_time.h>
#include "learn_msg_filter/NewString.h"
#include <std_msgs/String.h>

using namespace message_filters;


void callback(const learn_msg_filter::NewString::ConstPtr& f1, 
	          const learn_msg_filter::NewString::ConstPtr& s1) {

	std_msgs::String out_String;

	out_String.data = f1->st + s1->st;
	ROS_INFO_STREAM(out_String);
}


int main(int argc, char** argv) {

	ros::init(argc, argv, "combinedNode");
	ros::NodeHandle nh;
	
	message_filters::Subscriber<learn_msg_filter::NewString> f_sub(nh, "chatter", 1);
	message_filters::Subscriber<learn_msg_filter::NewString> s_sub(nh, "anotherChatter", 1);

	typedef sync_policies::ExactTime<learn_msg_filter::NewString, learn_msg_filter::NewString> MySyncPolicy;

	Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), f_sub, s_sub);
	sync.registerCallback(boost::bind(&callback, _1, _2));
	ROS_INFO_STREAM("checking ...");
	
	ros::spin();

	return 0;

}