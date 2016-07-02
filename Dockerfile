FROM quay.io/natostanco/alppy2ctr

RUN apk update \
 && apk add git \
 && git clone https://github.com/sondree/b2_fuse \
 && apk del --purge git \
 && rm /var/cache/apk/*
 
COPY ./scripts/* /usr/local/bin

CMD ["b2fuse"]
 
