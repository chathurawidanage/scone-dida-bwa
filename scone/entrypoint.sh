#!/bin/ash
export SCONE_FSPF_KEY=$(cat /data-original/keytag | awk '{print $11}')
export SCONE_FSPF_TAG=$(cat /data-original/keytag | awk '{print $9}')
export SCONE_FSPF=/data/fspf.pb
$1