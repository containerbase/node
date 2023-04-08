# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.15.0

FROM ghcr.io/containerbase/base:7.7.0@sha256:c8ed627bcb9a05fc0a41513d37452b76b7a22166ff32530d4587ed6e45d7e133

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
