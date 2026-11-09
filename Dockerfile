# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.2

FROM ghcr.io/containerbase/base:14.66.12@sha256:3e155635e9a800dd8d5d091f8b0bc237217b1e721359dd88c2b6805ba123ef24

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
