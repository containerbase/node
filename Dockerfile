# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.1

FROM ghcr.io/containerbase/base:6.1.5@sha256:29ad7c34b790d31c627a76d97b6c90c9f0e02d4bf5d77986db581402e74bb609

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
