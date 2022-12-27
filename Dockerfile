# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.19.0

FROM ghcr.io/containerbase/buildpack:5.10.1@sha256:023ae79f39e2ded0f73e00095b586e66d569b4a709f9c9c00645b9a8b305f5ee

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
