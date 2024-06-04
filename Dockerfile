# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.14.0

FROM ghcr.io/containerbase/base:10.10.1@sha256:52cf580ef84c2c5733d58db52f06ca7b60b8a1f2422908fab72c6fa0dccaea73

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
