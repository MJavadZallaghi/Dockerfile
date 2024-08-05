FROM docker.arvancloud.ir/ros:noetic

RUN apt-get update && apt-get install -y x11-apps

# Add a simple GUI for display from Docker on
# the main machine screen 
CMD ["xeyes"]


    ### Command for running the container with  GUI ###

    # sudo docker run -it --rm \     
    #                   --net=host \
    #                   -e DISPLAY=$DISPLAY \
    #                   -v /tmp/.X11-unix:/tmp/.X11-unix  \   
    #                   -v /tmp/.docker.xauth:/tmp/.docker.xauth \
    #                   ros_noetic_gui
