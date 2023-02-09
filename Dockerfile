# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.0

FROM ghcr.io/containerbase/base:6.1.3@sha256:165bc6512e059c166b1ac1d1fc1d31537295919be6d5bee59f8498d5f4758f6d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
