# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.13.1

FROM ghcr.io/containerbase/base:10.6.15@sha256:4ca97d64f58f3dd66d467a8e0a17378dc2d2a9a3325e835dfd098a3d5c0315e3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
