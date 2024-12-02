# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.1

FROM ghcr.io/containerbase/base:13.0.24@sha256:5015941c82e6143de4c1c0afbea6e9a6183cf60fb0ee7d8b47ff3ec9dfa03b69

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
