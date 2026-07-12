# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.18.0

FROM ghcr.io/containerbase/base:14.12.10@sha256:897c18f748b59d02dd0ba4ae38e27602cbbe8aef8855256cde1a6d12296f4514

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
