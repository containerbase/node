# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.0

FROM ghcr.io/containerbase/base:13.23.9@sha256:8f0470a0c68b18fddf6e8c16d09c1f32bb709702c16f89f0ecbef1bad1197817

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
