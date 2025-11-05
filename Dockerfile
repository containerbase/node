# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.0

FROM ghcr.io/containerbase/base:13.24.0@sha256:92a9bc4a65e23c0ad813a651138f4b4610daa8bddd25767c71877262f60ec7b4

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
