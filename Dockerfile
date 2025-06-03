ARG NODE_VERSION=22-alpine
ARG BUF_PROTOC_ES=2.5.1

FROM node:${NODE_VERSION} AS protoc
ARG BUF_PROTOC_ES
RUN apk add --no-cache\
    bash \
    protobuf \
    protobuf-dev
RUN npm i -g @bufbuild/protoc-gen-es@$BUF_PROTOC_ES
COPY protoc-wrapper /usr/local/bin/protoc-wrapper
ENTRYPOINT ["protoc-wrapper", "-I/usr/include"]
