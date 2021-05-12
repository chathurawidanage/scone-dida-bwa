FROM kevinwangfg/scone_bwa:v1.3

RUN rm /etc/apk/repositories
COPY repositories /etc/apk/

RUN apk update && apk add --upgrade gcc

RUN git clone https://github.com/chathurawidanage/scone-dida-bwa.git
RUN cd scone-dida-bwa && scone g++ dsp.cpp -o dsp && scone g++ mrg.cpp -o mrg
