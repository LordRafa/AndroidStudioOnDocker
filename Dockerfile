FROM ubuntu:22.04

MAINTAINER Rafael Waldo Delgado Doblas

# Initial Setup
ARG UID=1000
ARG GID=1000
ARG USER="android"
ENV STUDIO_HOME="/Studio_Home"

ENV DEBIAN_FRONTEND="noninteractive"

# Installing Dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git vim wget unzip openjdk-17-jdk
RUN apt-get install -y libxrender1 libxtst6 libfreetype6 libxft2 libnotify4
RUN apt-get install -y qemu-kvm libvirt-daemon-system
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Setting up the user
VOLUME "$STUDIO_HOME"
RUN ln -s "$STUDIO_HOME" "/home/$USER"
WORKDIR "/home/$USER"

RUN groupadd -g "$GID" -r "$USER"
RUN useradd -u "$UID" -g "$GID" -r "$USER"
RUN adduser "$USER" kvm
RUN adduser "$USER" plugdev

RUN chown "$USER:$USER" "$STUDIO_HOME"
RUN chown "$USER:$USER" "/home/$USER"

# Provisioning required configs and executables
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 755 /usr/local/bin/entrypoint.sh

# Keeping update the image
RUN apt-get update && apt-get upgrade -y
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Setting up entry point
USER "$USER"
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]

