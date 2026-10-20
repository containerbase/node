# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.0

FROM ghcr.io/containerbase/base:14.44.2@sha256:6b01e7a0da7bba215791531c3734543136c7e4fbf694ae8a8756d0e2eb2e3549

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
