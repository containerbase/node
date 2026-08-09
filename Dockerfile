# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.19.0

FROM ghcr.io/containerbase/base:14.13.19@sha256:61bb7837974628d06a52ba1a9fcb5b09e2e6f64f5744946084ab60a9a7b24d2e

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
