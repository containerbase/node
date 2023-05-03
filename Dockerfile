# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.0

FROM ghcr.io/containerbase/base:7.9.0@sha256:9ecd90a3721fd4485ccbbbb85f119f6c433c6bf16eaa8a1e0f28a491a54777d4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
