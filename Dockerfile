# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.19.0

FROM ghcr.io/containerbase/base:14.14.0@sha256:24c1db35e10fdda5a3d851613b8a74f772fd96eb84a451aec5a5283ec643bc99

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
