# syntax=docker/dockerfile:1

FROM alpine:latest

USER root

RUN apk update
RUN apk add bash                     # for: /bin/bash
RUN apk add bind-tools               # for: dig
RUN apk add nmap                     # for: nmap
RUN apk add curl                     # for: curl
RUN apk add vim                      # for: vim

CMD ["/bin/bash"]

HEALTHCHECK  --interval=15m \
    --start-interval=30s \
    --start-period=30s \
    CMD /bin/bash -c "" || exit 1
