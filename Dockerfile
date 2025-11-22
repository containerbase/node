# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.1

FROM ghcr.io/containerbase/base:13.25.2@sha256:3d2629931b300cea60ed88fe80c0aa2678c7aa78bf34311511f50960de6b7cb5

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
