# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.12.0

FROM ghcr.io/containerbase/base:13.25.12@sha256:99bce8e2f74678d1cd96a2e39a3abf7349f6821965f2d7565361665363454df4

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
