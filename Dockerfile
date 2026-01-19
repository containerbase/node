# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.0

FROM ghcr.io/containerbase/base:13.26.6@sha256:eabf9c3256c8782947269d9b78694d7ed3fee1f73d8ee1e9412532c8657d0d31

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
