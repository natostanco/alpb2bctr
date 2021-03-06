FROM quay.io/natostanco/alppytctr

RUN apk update \
 && apk add git ca-certificates \
 && git clone https://github.com/sondree/b2_fuse \
 && apk del --purge git \
 && pip install fusepy b2 \
 && rm /var/cache/apk/*
 
COPY ./scripts/* /usr/local/bin/

CMD ["b2fuse"]
 
