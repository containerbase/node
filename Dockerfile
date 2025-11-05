# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.1

FROM ghcr.io/containerbase/base:13.23.19@sha256:b54393c9a6841c22a50740dc082d9b5719491d23cfc9626a8d12978282e4f812

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
