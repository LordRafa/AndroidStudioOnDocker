#!/bin/bash

rm -r "$HOME/bin/AndroidStudioOnDocker.sh"
rm -r "$HOME/.local/share/icons/hicolor/scalable/apps/studio-docker.svg"
rm -r "$HOME/.local/share/applications/android-studio-on-docker.desktop"
rm -r "$HOME/.AndroidStudioOnDocker"

docker image rm lordrafa/android-studio

