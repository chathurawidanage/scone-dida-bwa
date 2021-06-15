#!/bin/bash
. ./set_env.sh
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=8G --device=/dev/isgx $PROTECTED_DOCKER "mkdir -p ${PROTECTED_WORK}"
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=8G --device=/dev/isgx $PROTECTED_DOCKER "/usr/bin/time -v dsp -b${BMER} -p${PARTITIONS} -g ${GEN_SOURCE} -u ${UNPROTECTED_BF} -d ${PROTECTED_WORK} -e 1 ${INPUT_FILE}"