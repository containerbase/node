# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.0

FROM ghcr.io/containerbase/base:14.41.0@sha256:0684699bd1e4ea974818e06f448e6bc987a43b4ddc6849402a028515c11961fb

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
