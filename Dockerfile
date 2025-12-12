# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.12.0

FROM ghcr.io/containerbase/base:13.25.13@sha256:d97321d342ba6318ae4e6700c6100e2bd6a8afc7aea2d93a35aa6166fa5a6438

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
