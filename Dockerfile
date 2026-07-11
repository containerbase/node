# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.18.0

FROM ghcr.io/containerbase/base:14.12.8@sha256:82477a5f6b5765035839365eb42d7993c85cb536b99b27f36e5b4cbc248f9264

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
