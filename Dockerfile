# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.0

FROM ghcr.io/containerbase/base:14.40.0@sha256:4db7a533e4f362803ab6f3b16beb52f4559bc74416a4120fbbfa60ac8480b979

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
