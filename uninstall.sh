#!/bin/bash

rm -r "$HOME/bin/AndroidStudioOnDocker.sh"
rm -r "$HOME/.local/share/icons/hicolor/scalable/apps/studio-docker.svg"
rm -r "$HOME/.local/share/applications/android-studio-on-docker.desktop"
rm -r "$HOME/.onDocker/AndroidStudio"
sudo rm -f "/etc/udev/rules.d/51-android.rules"
sudo rm -f "/usr/local/bin/android-studio-on-docker-udev.sh"

docker image rm lordrafa/android-studio

