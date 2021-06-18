#!/bin/bash
. ./set_env.sh false
RUN_ID=$1
RUN_ID_OUT="$1_out"
mkdir -p $SCONE_PROTECTED_DATA/$RUN_ID_OUT
cp $SCONE_PROTECTED_DATA/$RUN_ID/lreads.sam $SCONE_PROTECTED_DATA/$RUN_ID_OUT

for (( i=1; i<=$PARTITIONS; i++ ))
do
    echo "Processing partition $i"
    docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original"  --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=8G --device=/dev/isgx --workdir="$GEN_SOURCE" $PROTECTED_DOCKER "bwa mem -k25 -o /data/$RUN_ID_OUT/aln-$i.sam mref-$i.fa /data/${RUN_ID}/mreads-$i.fa"
done