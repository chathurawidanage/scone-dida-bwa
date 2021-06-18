#!/bin/bash
. ./set_env.sh false
RUN_ID=$1
RUN_ID_OUT="$1_out"
mkdir -p $WORD_DIR/$RUN_ID_OUT
cp $WORD_DIR/$RUN_ID/lreads.sam $WORD_DIR/$RUN_ID_OUT

for (( i=1; i<=$PARTITIONS; i++ ))
do
    # echo "Processing partition $i"
    # start=`date +%s`
    docker run -it -v "$FS_BASE/work:/work" -v "$FS_BASE/volume:/data" -v "$FS_BASE/data-original:/data-original" --workdir="$GEN_SOURCE" --entrypoint bwa $UNPROTECTED_DOCKER mem -k25 -o /work/$RUN_ID_OUT/aln-$i.sam mref-$i.fa /work/${RUN_ID}/mreads-$i.fa
    # end=`date +%s`
    # runtime=$( echo "$end - $start" | bc -l )
    # echo $runtime
done