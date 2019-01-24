FROM ubuntu:bionic
RUN apt update -qq && apt install -qqyy \
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
    pip install \
    docker-compose \
    ansible