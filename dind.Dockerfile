FROM alpine:latest
RUN apk add         \
    tar             \
    gzip            \
    make curl jq    \
    rsync           \
    git             \
    git-lfs         \
    fossil          \
    openssh-client  \
    docker          \
    python-dev      \
    py-pip          \
    musl-dev        \
    openssl-dev     \
    libffi-dev      \
    gcc &&          \
    pip install --upgrade pip && \
    pip install docker-compose==1.23.2 ansible girder-client && \
    apk del gcc
