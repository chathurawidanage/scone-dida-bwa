# DISCLAIMER : This is a repository for scratch work!

```bash
docker run -it -v "$PWD/work:/work" -v "$PWD/volume:/data" -v "$PWD/data-original:/data-original" --env SCONE_VERSION=1 --env SCONE_MODE=HW --env SCONE_HEAP=100M --env SCONE_FSPF_KEY=$SCONE_FSPF_KEY --env SCONE_FSPF_TAG=$SCONE_FSPF_TAG --env SCONE_FSPF=/data/fspf.pb --device=/dev/isgx cwidanage/scone-dida-bwa:1.1
```


```bash
./dsp -b25 -p 2 -g /mnt/bwa-sgx-scone/work/ref_80/ -u /mnt/scone-dida-bwa/up -d /mnt/scone-dida-bwa/pr/ -e 1 /mnt/bwa-sgx-scone/SRR062634.filt.fastq
```

```bash
dsp -b25 -p2 -g /work/ref_80/ -u /work/bf -d /data/a1 -e 1 /work/input.txt
```

Create BF
../scone-dida-bwa/dsp -b25 -p 2 -g $(pwd)/work/ref_80/ -u $(pwd)/work/bf -d $(pwd)/volume/a1/ -e 0 $(pwd)/work/input.txt