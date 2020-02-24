FROM osrf/ros:eloquent-desktop

# Install tools for development
RUN apt-get update && \
    apt-get install -y vim byobu gdb htop lxterminal
