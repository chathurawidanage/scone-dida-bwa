export FS_BASE=/mnt/bwa-sgx-scone
export SCONE_PROTECTED_DATA=$FS_BASE/data
export SCONE_ORIGINAL_DATA=$FS_BASE/data-original

export WORK_DIR=$FS_BASE/work

export PARTITIONS=80
export BMER=25

export RUN_ID="${PARTITIONS}_${BMER}_$(uuidgen)"
echo "Assigned Run ID ${RUN_ID}"

mkdir -p $FS_BASE/data/$RUN_ID
mkdir -p $FS_BASE/work/$RUN_ID

# Relative to the container
export GEN_SOURCE=/work/ref_80/
export UNPROTECTED_BF=/work/bf
export PROTECTED_WORK=/data/$RUN_ID
export UNPROTECTED_WORK=/work/$RUN_ID
export INPUT_FILE=/work/input.txt


export PROTECTED_DOCKER=cwidanage/scone-dida-bwa
export UNPROTECTED_DOCKER=cwidanage/dida-bwa

export PARTITIONS=80
export BMER=25