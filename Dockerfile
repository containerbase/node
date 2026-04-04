# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.1

FROM ghcr.io/containerbase/base:14.6.10@sha256:2894656e603a20d3ad70e3f167b47b1b6b5b6b8df6c63aec6023790a6a5a779b

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
