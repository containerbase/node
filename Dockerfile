# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM ghcr.io/containerbase/buildpack:3.5.0@sha256:99df776a61d154a0647af8a17426b80842727e23ea0987d174756d515d5cf707

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
