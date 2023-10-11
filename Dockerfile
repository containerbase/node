# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.0

FROM ghcr.io/containerbase/base:9.20.12@sha256:c2a0548b8f6a7fa82ca08586b7298fe05b8be5badcd94096cb2d4f88961c40e5

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
