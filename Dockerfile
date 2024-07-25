# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.16.0

FROM ghcr.io/containerbase/base:11.0.0@sha256:5560879bc953b77edb6ddf0c214ba41c23883ad82e0e685a394dbb89f3b63d95

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
