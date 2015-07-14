#!/bin/bash

echo "You may need to run 'xhost local:root'"

docker run --rm -it \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --privileged=true \
  -v `pwd`:/local \
  -v /dev/bus/usb:/dev/bus/usb \
  -h flash-tool-lite \
  flash-tool-lite \
  "$@"
