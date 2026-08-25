# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.19.0

FROM ghcr.io/containerbase/base:14.14.1@sha256:ff5cec29c82fc83836115c9aff12456ed170cccf80d0b69c7c14834a2972fca3

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
