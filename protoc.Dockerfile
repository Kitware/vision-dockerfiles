FROM alpine:edge
RUN apk add --no-cache musl-dev go protobuf make ca-certificates git
RUN go get -u google.golang.org/grpc && \
    go get -u github.com/golang/protobuf/protoc-gen-go