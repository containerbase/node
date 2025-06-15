# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.16.0

FROM ghcr.io/containerbase/base:13.8.41@sha256:78888c1d58a555a4b98077be3a1dfaaffd01a7db813dd9b00f66e564cf4a5cbc

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
