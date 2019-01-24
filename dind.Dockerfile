FROM alpine:latest
RUN apk add \
    curl    \
    jq      \
    make    \
    rsync   \
    git     \
    git-lfs \
    fossil  \
    openssh-client \
    docker \
    py-pip && \
    pip install docker-compose ansible
