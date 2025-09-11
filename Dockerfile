# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.19.0

FROM ghcr.io/containerbase/base:13.12.0@sha256:32b21d8fd7e3b984e57bbb42c50bb9dcb025a6a045e8a661e9717d69a8be0ffd

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
