# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.12.0

FROM ghcr.io/containerbase/base:13.25.14@sha256:06b5c96f4c57ff6588591624d1af3f942373d6de03a83dc7fb83cce16627a15b

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
