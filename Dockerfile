# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.0

FROM ghcr.io/containerbase/base:14.39.0@sha256:5da5c8171b5a074c0b4fb286481b74a3ca6631fa2dbca179c59d86947f2c5627

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
