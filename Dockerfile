# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.0

FROM ghcr.io/containerbase/base:11.11.34@sha256:3794a15c665096a2627184c3d98b4d655fe7f953ef4c33635a9c8be6eae3c440

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
