# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.16.0

FROM ghcr.io/containerbase/base:14.10.23@sha256:49d4865e1c8cbae4121f9d4a090518a2c0338d0b27f44ca49afa889f59143c56

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
