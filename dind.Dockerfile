FROM alpine:latest
RUN apk add \
    curl    \
    jq      \
    make    \
    git     \
    git-lfs \
    fossil  \
    openssh-client \
    docker \
    py-pip && \
    pip install docker-compose