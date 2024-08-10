FROM docker.arvancloud.ir/ros:noetic

ENV vscode_file=code_1.92.0-1722473020_amd64.deb
ENV user=MJavadZallaghi

RUN apt-get update && apt-get install -y x11-apps

# VS code Install
RUN useradd -ms /bin/bash ${user}
RUN cd home/${user}/ && mkdir downloads

COPY ${vscode_file} home/${user}/downloads
RUN cd home/${user}/downloads/ && sudo apt-get update && sudo apt-get install -y ./${vscode_file}

# Install git, curl
RUN sudo apt-get update && sudo apt-get install -y git
RUN sudo apt-get update && sudo apt-get install -y curl

# Entery point script
COPY entery_script.sh /home/${user}/entery_script.sh
RUN cd /home/${user}/ && chmod +x entery_script.sh
# CMD ["code", "--no-sandbox", "--user-data-dir=/home/${USERNAME}/.vscode"] for vs code closes after 1 sec!

### Command for running the container with  GUI ###
# sudo docker run -it --privileged --rm  --runtime=nvidia --gpus=all --net=host --name=container_ros_noetic_gui -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  -v /tmp/.docker.xauth:/tmp/.docker.xauth ros_noetic_gui

