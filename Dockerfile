FROM gliderlabs/alpine:3.6
LABEL maintainer="pedro.perez@microsoft.com"

RUN apk add --update openssl \
  && wget https://github.com/PedroPerezMSFT/qperf-container/blob/master/binaries/qperf-musl-0.4.10?raw=true \ 
    -O /run/qperf \
  && chmod +x /run/qperf

ENTRYPOINT ["/run/qperf"]