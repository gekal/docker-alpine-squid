FROM alpine:3.9

ENV LANG="C.UTF-8" \
    SQUID_CACHE_DIR="/var/spool/squid" \
    SQUID_LOG_DIR="/var/log/squid" \
    SQUID_USER="root" \
    PROXY_HOST="test"

RUN apk --no-cache add squid gettext

COPY conf/squid.conf.template /etc/squid
COPY scripts/entrypoint.sh /sbin

EXPOSE 3128


# END
