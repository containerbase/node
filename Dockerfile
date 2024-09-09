# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.17.0

FROM ghcr.io/containerbase/base:11.11.12@sha256:42469cfb8f6d7fd2fe49a56b7361a3b74c74ee4e261983068cc0ffa33e6fdf48

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
