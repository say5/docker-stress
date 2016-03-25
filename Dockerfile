FROM alpine:3.3
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "http://dl-3.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update || true && \
    apk add stress && \
    rm -rf /var/cache/apk/*
CMD /usr/bin/stress

