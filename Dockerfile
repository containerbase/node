# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.21.0

FROM ghcr.io/containerbase/base:14.29.1@sha256:6596d3e9d5655acc013f4b2c7bcb1c390281ccd230343de370fe8b206399f14d

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
