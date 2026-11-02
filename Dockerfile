# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.2

FROM ghcr.io/containerbase/base:14.59.8@sha256:53044fe442f5f9e675433bdade868d78db1fe1c5f09eac37987a28d78c521e1b

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
