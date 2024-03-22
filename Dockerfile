# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.1

FROM ghcr.io/containerbase/base:10.3.5@sha256:128b55dcf0b623339e5184df7d92bae4c7b5eb8e8dc955e797ed3c3ea2a6f8a4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
