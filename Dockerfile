# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.12.0

FROM ghcr.io/containerbase/base:13.25.24@sha256:1943eff8ba2978f7d12d259c89d3c404027a4de407817c9a100e4f6c19ba74ff

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
