FROM alpine:latest
RUN apk add \
    curl    \
    jq      \
    make    \
    git     \
    fossil  \
    openssh-client \
    docker \
    py-pip && \
    pip install docker-compose