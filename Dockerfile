# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.0

FROM ghcr.io/containerbase/base:14.43.0@sha256:4646fdf373f044ddb51d85c7b31839f62a0491495b7da75b7eed39da425ad917

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
