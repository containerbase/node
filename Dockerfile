# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.2

FROM ghcr.io/containerbase/base:10.6.1@sha256:9f302797b4cce825693829d5c3435ffee9fc340e4e3356ff82347c476d039732

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
