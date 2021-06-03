#!/bin/bash
. ./set_env.sh
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=100M --device=/dev/isgx --entrypoint /bin/ash 371355e80516  -c "./reset.sh"