# Android Studio On Docker

Android Studio on Docker. Supports USB and KVM with no privileged flag.

## How to use

First download the [latest](https://github.com/LordRafa/AndroidStudioOnDocker/releases/latest) release and untar it.

Run **./install.sh** and follow any further instruction.

After the installer finish you will find Android Studio Docker on your applications list.

Enjoy it!!!

## Known Issues

* USB devices connected before the container was started will be not present. Workaround: Reconnect them after the container has started.
* Android Studio restarts will close the container. Workaround: Just start it again manually.


## Useful links
![workflow](https://github.com/LordRafa/AndroidStudioOnDocker/actions/workflows/cd.yml/badge.svg)

[Dockerhub Project Page](https://hub.docker.com/r/lordrafa/android-studio)

## Attributions

Thanks to the following people to share their work:

* Android Studio software belongs to [Google](https://developer.android.com/studio/)

