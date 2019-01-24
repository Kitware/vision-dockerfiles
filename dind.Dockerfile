FROM ubuntu:bionic
RUN apt-get update -qq && \
    apt-get install -qqyy \
    curl    \
    jq      \
    make    \
    rsync   \
    git     \
    git-lfs \
    fossil  \
    openssh-client \
    docker \
    python-pip && \
    apt-get clean && \
    pip install docker-compose ansible
