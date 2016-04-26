FROM gliderlabs/alpine:3.3

ENV VADER_USER vader
ENV VADER_UID 1000
ENV DATA_DIR /data

RUN adduser -D -u ${VADER_UID} ${VADER_USER} \
      && mkdir -p ${DATA_DIR}/secure \
      && chown -R ${VADER_USER} ${DATA_DIR}

CMD ["/bin/sh"]
