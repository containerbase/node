# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.16.0

FROM ghcr.io/containerbase/base:14.10.19@sha256:9d6f5a41d87448d5026dbd52552a2caa78094e15429356854ceb29aa404b0c47

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
