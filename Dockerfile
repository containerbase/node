# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.1

FROM ghcr.io/containerbase/base:9.19.1@sha256:37e6e011449cbbb135e694bfe3c147dfc537c22c0dc9e9c22592dae8bef7b6f0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
