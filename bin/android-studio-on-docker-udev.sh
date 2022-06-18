#!/usr/bin/env bash

if [ ! -z "$(docker ps -qf name=android-studio-on-docker)" ]; then

  if [ "$ACTION" == "add" ]; then

    docker exec -u 0 android-studio-on-docker mkdir -p $(dirname $DEVNAME)
    docker exec -u 0 android-studio-on-docker mknod $DEVNAME c $MAJOR $MINOR
    docker exec -u 0 android-studio-on-docker chmod -R 777 $DEVNAME

  elif [ "$ACTION" == "remove" ]; then

    docker exec -u 0 android-studio-on-docker rm $DEVNAME
    docker exec -u 0 android-studio-on-docker rmdir -p $(dirname $DEVNAME)

  fi

fi

