#!/bin/bash

mkdir -p "$HOME/.local/share/icons/hicolor/scalable/apps/"
mkdir -p "$HOME/.local/share/applications/"
mkdir -p "$HOME/bin/"

cp AndroidStudioOnDocker.sh "$HOME/bin/"
ln -sf "$HOME/.onDocker/AndroidStudio/android-studio/bin/studio.svg" "$HOME/.local/share/icons/hicolor/scalable/apps/studio-docker.svg"
cp android-studio-on-docker.desktop "$HOME/.local/share/applications/"

"$HOME/bin/AndroidStudioOnDocker.sh" echo "Android Studio on Docker installed."

echo "Make sure that $HOME/bin is in your PATH at .bashrc or similar."
echo "Application icon may require to logout to show up properly."

