# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.16.0

FROM ghcr.io/containerbase/base:14.10.25@sha256:1e0c0f168566861b19eafcac956b46d24ccf608cbb128d16b53b8d53657b5819

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
