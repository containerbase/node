# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.15.0

FROM ghcr.io/containerbase/base:13.8.22@sha256:7561f7e2f1d996bfcaf7cffbe2bb0b520942ef9e9665a4e71cf4ba1c7db26fd2

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
