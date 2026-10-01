# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.21.0

FROM ghcr.io/containerbase/base:14.23.0@sha256:81eda1a933a4a0819ea2f2b960499c989e876729b4b871e81b5db5ac9b11e5bb

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
