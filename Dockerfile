# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.17.0

FROM ghcr.io/containerbase/base:11.11.29@sha256:d76489614d9a0edf18402fc1e0cf93e7e5578f50f6c3b7d3c6e50a3f74f69512

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
