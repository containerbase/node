# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.21.0

FROM ghcr.io/containerbase/base:14.21.1@sha256:150b9ce5d54835ff80f01f6b0e451de5157ab6fda57c29cfd5c40e1ebd5f58d4

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
