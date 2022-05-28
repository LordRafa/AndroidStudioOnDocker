#!/bin/bash

LOCAL_HOME="$HOME/.AndroidStudioOnDocker/"
mkdir -p $LOCAL_HOME 2> /dev/null

docker run --rm -i \
	--env=DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $LOCAL_HOME:"/Studio_Home" \
	--device /dev/kvm --group-add kvm \
	-v /dev/bus/usb:/dev/bus/usb:ro --group-add plugdev --device-cgroup-rule 'c 189:* rwm' \
	lordrafa/android-studio $@

