# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.1

FROM ghcr.io/containerbase/base:14.50.0@sha256:c8289c680c23b4fa45998a53e601f0f2e7ef7693fd0a93c6b24acfb58d972dfd

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
