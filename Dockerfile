# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.20.0

FROM ghcr.io/containerbase/base:14.14.2@sha256:49687568305ca25bb762be584072ce86b0f0157547c44eda7412869a01ff9577

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
