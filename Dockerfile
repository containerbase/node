# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.2

FROM ghcr.io/containerbase/base:14.59.7@sha256:b2ff06032e91a9b79dd5761b3a4f1d68aba38c8d6a935a38e7422ffe72435037

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
