# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.0

FROM ghcr.io/containerbase/base:14.5.3@sha256:2baa775c64f5b350c0f11b01c15a0f6f385f1daa60f8c42409431933fcd1f2c8

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
