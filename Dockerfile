# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.0

FROM ghcr.io/containerbase/base:7.8.5@sha256:6fa99b3f74eb0ca5a11cf646eeab27ceed241dfaeef67521cb05dcf81fdfb985

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
