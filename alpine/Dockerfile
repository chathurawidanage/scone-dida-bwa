FROM alpine:3.13.5

RUN apk update && apk add --upgrade g++ && apk add git

RUN git clone https://github.com/chathurawidanage/scone-dida-bwa.git
RUN cd scone-dida-bwa && g++ dsp.cpp -fopenmp -o dsp && g++ mrg.cpp -fopenmp -o mrg

ENV PATH="/scone-dida-bwa:/root/bwa/:${PATH}"

ENTRYPOINT ["/bin/ash"]
