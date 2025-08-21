FROM osrf/ros:jazzy-desktop

# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
      iproute2 \
      iputils-ping \
      sudo \
      curl \
      wget \
      git \
      tig \
      tmux \
      vim \
      just

# Install ROS necessary packages
RUN apt-get update && \
    apt-get install -y --only-upgrade ros-jazzy-* && \
    apt-get install -y \
      ros-jazzy-rmw-cyclonedds-cpp \
      ros-jazzy-rmw-zenoh-cpp \
      ros-jazzy-demo-nodes-cpp \
      ros-jazzy-demo-nodes-py \
      ros-jazzy-action-tutorials-cpp \
      ros-jazzy-action-tutorials-py \
      ros-jazzy-image-tools \
      ros-jazzy-navigation2 \
      ros-jazzy-nav2-bringup \
      ros-jazzy-turtlebot3* \
      ros-jazzy-turtlesim

# Enable bash complete
RUN rm /etc/apt/apt.conf.d/docker-clean
RUN apt-get update && \
    apt-get install -y bash-completion

# Set an entry point for the container
CMD ["/bin/bash"]
