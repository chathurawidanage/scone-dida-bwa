FROM kevinwangfg/scone_bwa:v1.3

RUN rm /etc/apk/repositories
COPY repositories /etc/apk/

RUN apk update && apk add --upgrade gcc


