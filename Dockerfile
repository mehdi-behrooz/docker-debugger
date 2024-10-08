# syntax=docker/dockerfile:1
# checkov:skip=CKV_DOCKER_3

FROM alpine:3

# bind-tools for: dig
RUN apk update \
    && apk add bash nmap curl vim bind-tools

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

HEALTHCHECK  --interval=15m \
    --start-interval=10s \
    --start-period=30s \
    CMD pgrep sleep || exit 1
