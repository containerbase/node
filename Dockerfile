# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.0

FROM ghcr.io/containerbase/base:14.6.2@sha256:d216397e0011edbeefa6a6e675b43c11308fc6be0623a77073397ef7d46f30e7

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
