FROM koalaman/shellcheck-alpine:v0.6.0
RUN apk add         \
    bash            \
    curl            \
    diffutils       \
    file            \
    python-dev      \
    py-pip          \
    git             \
    git-lfs         \
    libffi-dev      \
    make            \
    musl-dev        \
    openssl-dev     \
    gcc &&          \
    pip install --upgrade pip && \
    pip install pycodestyle ansible-lint yamllint && \
    curl \
        https://github.com/hadolint/hadolint/releases/download/v1.15.0/hadolint-Linux-x86_64\
        -o /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint && \
    apk del curl gcc
