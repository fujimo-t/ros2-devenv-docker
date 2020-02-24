# ROS2 development environment on Docker

This runs three docker containers for ROS2(Eloquent) development:

* RViz
  * for visualization
* rqt
  * for visualization and introspection
* lxterminal with byobu
  * to run commands

Minimum tools are installed in the containers:

* vim
* gdb
* htop

`/root` directory is shared between all containers and retained even if the containers are recreated by `docker-compose up` or `docker-compose build`.

## Prerequisites

* Linux with X11
* Docker
* docker-compose

## Usage

### Build and create containers

```bash
git clone https://github.com/fujimo-t/ros2-devenv-docker.git
cd ros2-devenv-docker
sudo docker-compose up --no-start
```

### Start containers

```bash
xhost +local:root
sudo docker-compose start
```

### Stop containers

```bash
sudo docker-compose stop
```

### Other commands

See [docker-compose docs](https://docs.docker.com/compose/reference/).

## TODO

* Autocompletion for ROS2 command line tool is not worked without source setup files
