# syntax=docker/dockerfile:1
# checkov:skip=CKV_DOCKER_3

FROM alpine:3

# bind-tools for: dig
RUN apk update \
    && apk add bash nmap curl vim bind-tools

CMD ["/bin/bash"]

HEALTHCHECK  --interval=15m \
    --start-interval=30s \
    --start-period=30s \
    CMD /bin/bash -c "" || exit 1
