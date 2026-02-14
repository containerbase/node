# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.1

FROM ghcr.io/containerbase/base:14.1.2@sha256:65dce0baea0cf2a6b96920677b39a49b1298c0319b6c44ce4d6e4694b838e80f

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
