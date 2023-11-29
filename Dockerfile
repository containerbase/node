# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.2

FROM ghcr.io/containerbase/base:9.24.1@sha256:fb36bb5f67c7c70c5682c3f3e5bde7b13f6f9e482a0e4a231312fc60e3d7aa10

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
