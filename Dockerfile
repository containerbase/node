# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.1

FROM ghcr.io/containerbase/base:14.6.11@sha256:38798b60223c1bb258672f5ff5c6b3bceea37567b56824d214fe1b1e5018367d

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
