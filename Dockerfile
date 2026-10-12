# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.21.0

FROM ghcr.io/containerbase/base:14.32.1@sha256:c2e8e1ed4eb1279458678ee3f59798219680a3f202a4fd0f2f4f567c17982ca7

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
