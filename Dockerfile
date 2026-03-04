# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.0

FROM ghcr.io/containerbase/base:14.5.1@sha256:136421887c0c1b2667270da7c71a1bb4d18d76cab849de27a760a95369825324

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
