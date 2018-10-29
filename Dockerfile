FROM debian:stretch-slim

MAINTAINER kiseru.io

RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y openssl ca-certificates curl tar libunwind8 icu-devtools && \
    curl -skL https://github.com/datalust/seqcli/releases/download/v0.1.153/seqcli-0.1.153-linux-x64.tar.gz | tar xvz

ENTRYPOINT ["/seqcli-0.1.153-linux-x64/seqcli"]
CMD []


