FROM alpine:latest
RUN apk add \
    make \
    rsync   \
    git     \
    git-lfs \
    fossil  \
    openssh-client \
    docker \
    python-dev \
    py-pip \
    musl-dev \
    openssl-dev \
    libffi-dev \
    gcc && \
    pip install --upgrade pip && \
    pip install docker-compose ansible && \
    apk del gcc make
