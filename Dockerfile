# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.3

FROM ghcr.io/containerbase/base:14.69.1@sha256:c985f103e60725b00c4a52506a94367275600e9cbd1bd8bb315a27f73688b981

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
