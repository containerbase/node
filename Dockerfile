# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.17.0

FROM ghcr.io/containerbase/base:11.11.23@sha256:6eaea919624c4987718ac5bc01f38f3fca1192453327ed52b0e85b5bfb724580

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
