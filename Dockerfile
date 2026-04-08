# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.1

FROM ghcr.io/containerbase/base:14.6.18@sha256:fef9f980e4e7eb2900e42d2e8f21f38762cf4ab0ab6a3691e2d230e98a340bb6

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
