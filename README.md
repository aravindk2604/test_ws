# Example to use message_filters in ROS

## Run the Code

### Terminal 1
```
roscore
```


### Terminal 2
```
git clone git@github.com:aravindk2604/test_ws.git
cd ~/test_ws/
catkin_make
source devel/setup.bash
roslaunch learn_msg_filter combined.launch
```

### Terminal 3
```
cd ~/test_ws/
source devel/aetup.bash
rosrun learn_msg_filter combinedNode
```

### Documentation
A moderate explanation of what happens in this ROS package is written as a blog post on my website [here](http://aravindkrishnan.com/example_of_message_filters/).  

Suggestions to improve this example are most welcome. This was an attempt for me to understand and use message_filters for a datatype different from the commonly used *Image* and *CameraInfo* topics under *sensor_msgs* as given in the official ROS Wiki page.