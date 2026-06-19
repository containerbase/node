# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.17.0

FROM ghcr.io/containerbase/base:14.12.1@sha256:ab0a2742e98da3ea80a8f65a34a1de4dca774d74496f2276c5ec3775189ac320

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
