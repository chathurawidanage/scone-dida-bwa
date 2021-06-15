FROM alpine:3.13.5

RUN apk update && apk add --upgrade g++ && apk add git

RUN git clone https://github.com/chathurawidanage/scone-dida-bwa.git
RUN cd scone-dida-bwa && g++ dsp.cpp -fopenmp -O3 -o dsp && g++ mrg.cpp -fopenmp -O3 -o mrg  && g++ dsp.cpp -O3 -o dsp_single_threaded

ENV PATH="/scone-dida-bwa:/root/bwa/:${PATH}"

ENTRYPOINT ["/bin/ash"]
