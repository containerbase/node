# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.21.0

FROM ghcr.io/containerbase/base:14.30.0@sha256:13811710f863010d58c4d13670826afea080f2d94fe60a71d3dd47aef15526ed

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
