FROM alpine:3.13.5

RUN apk update && apk add --upgrade g++ git make zlib-dev

RUN git clone https://github.com/chathurawidanage/scone-dida-bwa.git
RUN cd scone-dida-bwa && g++ dsp.cpp -fopenmp -O3 -o dsp && g++ mrg.cpp -fopenmp -O3 -o mrg  && g++ dsp.cpp -O3 -o dsp_single_threaded

RUN cd root && git clone https://github.com/lh3/bwa.git && cd bwa && make

ENV PATH="/scone-dida-bwa:/root/bwa/:${PATH}"

ENTRYPOINT ["/bin/ash"]
