# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.2

FROM ghcr.io/containerbase/base:14.57.2@sha256:f08107bd7aa05d53d26385c2dcc1c053487b01c040874a446dc9c8750afe4879

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
