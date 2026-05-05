# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.15.0

FROM ghcr.io/containerbase/base:14.9.6@sha256:fe182d00917eaea1c7ad7baabd603a6fd8ae22f5615dcfb3756ffde08dc2335d

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
