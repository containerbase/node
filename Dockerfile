# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.18.0

FROM ghcr.io/containerbase/base:13.8.61@sha256:1a2ea1bf6557bf9d988d2830e9b85c1e74b38f330e15731e4920da7c0854debd

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
