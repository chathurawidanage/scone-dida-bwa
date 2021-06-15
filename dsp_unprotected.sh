#!/bin/bash
. ./set_env.sh
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" $UNPROTECTED_DOCKER -c "dsp_single_threaded -b${BMER} -p${PARTITIONS} -g ${GEN_SOURCE} -u ${UNPROTECTED_BF} -d ${UNPROTECTED_WORK} -e 1 ${INPUT_FILE}"
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" $UNPROTECTED_DOCKER -c "dsp -b${BMER} -p${PARTITIONS} -g ${GEN_SOURCE} -u ${UNPROTECTED_BF} -d ${UNPROTECTED_WORK} -e 1 ${INPUT_FILE}"
