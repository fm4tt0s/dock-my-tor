FROM alpine

LABEL author="felipe mattos"

ARG TZ="America/Chicago"
ENV TZ ${TZ}

RUN apk upgrade --update \
    && apk add tor privoxy bash tzdata su-exec \
    && ln -sf /dev/stdout /var/log/tor/notices.log \
    && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo "${TZ}" > /etc/timezone \
    && rm -rf /var/cache/apk/*

COPY torrc /etc/tor/torrc
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
