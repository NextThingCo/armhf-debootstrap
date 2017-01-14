#!/bin/bash

[ -x "$(which docker)" ] || echo "please install docker"
[ -x "$(which docker)" ] || exit 1

docker pull computermouth/sudeb
docker run --rm -v $PWD:/build -w /build -it computermouth/sudeb /bin/bash
