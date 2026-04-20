# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.15.0

FROM ghcr.io/containerbase/base:14.7.0@sha256:72494230cc680301536d1eb01160a16e0adc5fb637c4743865a4511fc04915cc

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
