# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.13.2

FROM ghcr.io/containerbase/buildpack:3.3.3@sha256:e1ce413567fe80cb73221d3d20a13067e173c00ad972e96176891c6958d65bd8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
