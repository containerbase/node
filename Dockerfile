# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.0

FROM ghcr.io/containerbase/base:14.5.4@sha256:561a75770ded8e89bd44cbf9bc07aa00c17fe020caf7ee41e24ca4f4fca98950

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
