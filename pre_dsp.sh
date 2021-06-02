#!/bin/bash
. ./set_env.sh
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" 3ba335604c62 -c "dsp -b25 -p10 -g /work/ref_80/ -u /work/bf -d /data/a1 -e 0 /work/input.txt"