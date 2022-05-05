# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM ghcr.io/containerbase/buildpack:3.16.2@sha256:8475ca1aa16fdf7e39ed170ce737e766a6044bc793e95464adfcc499c6e3e251

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
