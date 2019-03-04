FROM alpine:3.9
RUN apk add --no-cache \
    musl-dev \
    go \
    protobuf \
    make \
    ca-certificates \
    git \
    dep
RUN go get -u google.golang.org/grpc && \
    go get -u github.com/golang/protobuf/protoc-gen-go && \
    go get -u github.com/golangci/golangci-lint/cmd/golangci-lint