#!/bin/bash
. ./set_env.sh false
docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" $UNPROTECTED_DOCKER