# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.0

FROM ghcr.io/containerbase/base:13.23.12@sha256:68be1b25099d8b7f44ef8663f9ec1b4112d2b71fb4a4731384f89ad9e710ab51

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
