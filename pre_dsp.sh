#!/bin/bash
. ./set_env.sh
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" $UNPROTECTED_DOCKER -c "dsp -b${BMER} -p${PARTITIONS} -g ${GEN_SOURCE} -u ${UNPROTECTED_BF} -d ${PROTECTED_WORK} -e 0 ${INPUT_FILE}"