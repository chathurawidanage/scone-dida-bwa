#!/bin/bash
. ./set_env.sh
RUN_ID=$1
RUN_ID_OUT="$1_out"

docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=1G --device=/dev/isgx --workdir="/work/$RUN_ID_OUT" --entrypoint mrg $UNPROTECTED_DOCKER -p${PARTITIONS} -a bwa-mem -m mem > output.sam
