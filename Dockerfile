# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.18.0

FROM ghcr.io/containerbase/base:13.10.10@sha256:4389fcabea8aaa14b0d0a6c77d96c4bd63bff2c8014b1d3d8eb29c7194a36824

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
