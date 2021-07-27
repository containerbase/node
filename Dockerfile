# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM ghcr.io/containerbase/buildpack:1.12.1@sha256:8c056fb4682770ec740dd930985cf658b0953eebd95ca0d184554e97912e9657

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
