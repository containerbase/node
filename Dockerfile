# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.12.0

FROM ghcr.io/containerbase/base:13.25.23@sha256:f377cbe2a9ee3b81f43692ae577f22d928c3bbf3556bfb36e14abe0a51e84027

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
