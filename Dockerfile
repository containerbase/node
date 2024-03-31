# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.0

FROM ghcr.io/containerbase/base:10.3.9@sha256:f6984b7e337407853c27b36c0f2b955edeb41d0f5d94d60e33cea930b6a17225

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
