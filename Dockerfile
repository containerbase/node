# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.0

FROM ghcr.io/containerbase/base:13.26.5@sha256:e79da12a49299dfa704ad77cad29e9cb41457105ea3a1e721128c5a0dae28cfd

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
