# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.1

FROM ghcr.io/containerbase/base:14.1.0@sha256:d66d8ebc1cb5ad0ca126436a6e670c6eff7fb25a5db2fef78683c349e515390e

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
