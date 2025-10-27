# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.0

FROM ghcr.io/containerbase/base:13.23.11@sha256:6ab6a08763ab0539e85e33fc4684235d98d8cd958ab5cd1b90e41ad9b76d6a44

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
