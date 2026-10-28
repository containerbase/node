# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.1

FROM ghcr.io/containerbase/base:14.55.2@sha256:d2b5ffe80eebcec4be21a95e7b675f9ef63324e1cf9e791e9ad02c7c944d15a1

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
