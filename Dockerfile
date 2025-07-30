FROM alpine:3.22

ARG CST_VERSION=1.19.3
RUN apk add --no-cache curl \
    && curl -sSL https://github.com/GoogleContainerTools/container-structure-test/releases/download/v${CST_VERSION}/container-structure-test-linux-amd64 -o /usr/local/bin/container-structure-test \
    && chmod +x /usr/local/bin/container-structure-test \
    && apk del curl
