FROM docker.arvancloud.ir/osrf/ros:noetic-desktop-full

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

# # CTU MRS Native Installation
# RUN curl https://ctu-mrs.github.io/ppa-stable/add_ppa.sh | bash
# RUN sudo apt install ros-noetic-mrs-uav-system-full -y

# # CTU MRS install based on the summer school
# RUN cd /home/${user}/ && git clone https://github.com/ctu-mrs/summer-school-2024.git
# RUN cd /home/${user}/summer-school-2024 && chmod +x install.sh && ./install.sh




### Command for running the container with  GUI ###
# sudo docker run -it --privileged --rm  --runtime=nvidia --gpus=all --net=host --name=container_ros_noetic_mrs -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  -v /tmp/.docker.xauth:/tmp/.docker.xauth ros_noetic_mrs

