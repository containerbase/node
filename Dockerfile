# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.2

FROM ghcr.io/containerbase/base:14.66.11@sha256:69f66c1b55435fda3eec94c6e8ef58b4c5c7ceae53b5155c3d82c7f1270eccbb

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
