FROM alpine:latest
RUN apk add \
    curl    \
    jq      \
    make    \
    rsync   \
    ansible \
    git     \
    git-lfs \
    fossil  \
    openssh-client \
    docker \
    py-pip && \
    pip install docker-compose