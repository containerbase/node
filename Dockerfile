# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.1

FROM ghcr.io/containerbase/base:13.23.14@sha256:ec94be5ba18aaba54c767ad4305c6e4070ee09027f9efe5e8429fe12028120f4

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
