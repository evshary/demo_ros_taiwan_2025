# Demo examples for ROS Taiwan 2025

The repository includes the demo examples in my presentation of ROS Taiwan 2025.

## Demo 1

* Run the container and remember to run tmux to split the terminal

  ```bash
  ./run.sh
  # Split the terminal
  tmux
  ```

* Run zenoh router, talker and listener

  ```bash
  # Terminal 1
  export RMW_IMPLEMENTATION=rmw_zenoh_cpp
  ros2 run rmw_zenoh_cpp rmw_zenohd
  # Terminal 2
  export RMW_IMPLEMENTATION=rmw_zenoh_cpp
  ros2 run demo_nodes_cpp talker
  # Terminal 3
  export RMW_IMPLEMENTATION=rmw_zenoh_cpp
  ros2 run demo_nodes_cpp listener
  ```
