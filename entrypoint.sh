#!/bin/bash

ANDROID_STUDIO_URL='https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.15/android-studio-2021.2.1.15-linux.tar.gz'

export PATH="$PATH:$HOME/Android/Sdk/platform-tools/"

if [ ! -f "$HOME/android-studio/bin/studio.sh" ]; then
  wget "$ANDROID_STUDIO_URL" -O android-studio.tar.gz
  tar xzvf android-studio.tar.gz
  rm android-studio.tar.gz
fi

# Default to 'studio' if no arguments are provided
args="$@"
if [ -z "$args" ]; then
  args="$HOME/android-studio/bin/studio.sh"
fi

exec $args

