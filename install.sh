#!/bin/bash

mkdir -p "$HOME/.local/share/icons/hicolor/scalable/apps/"
mkdir -p "$HOME/.local/share/applications/"
mkdir -p "$HOME/bin/"

cp bin/AndroidStudioOnDocker.sh "$HOME/bin/"
ln -sf "$HOME/.onDocker/AndroidStudio/android-studio/bin/studio.svg" "$HOME/.local/share/icons/hicolor/scalable/apps/studio-docker.svg"
cp bin/android-studio-on-docker.desktop "$HOME/.local/share/applications/"
echo "Root access must be granted in order to install udev rules and scripts to allow usb access"
sudo cp bin/51-android.rules /etc/udev/rules.d/
sudo cp bin/android-studio-on-docker-udev.sh /usr/local/bin/

"$HOME/bin/AndroidStudioOnDocker.sh" echo "Android Studio on Docker installed."

echo "Make sure that $HOME/bin is in your PATH at .bashrc or similar."
echo "Application icon may require to logout to show up properly."

