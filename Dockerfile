# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.1

FROM ghcr.io/containerbase/base:14.3.0@sha256:67cee5cd4d7eceeccd42074c63cc32e0977dcfd7c1662fc5b1efd9dd83147615

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
