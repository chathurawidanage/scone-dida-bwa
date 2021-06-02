#!/bin/bash
. ./set_env.sh
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=100M --device=/dev/isgx 531e1c31e5bd "dsp -b25 -p2 -g /work/ref_80/ -u /work/bf -d /data/a1 -e 1 /work/input.txt"