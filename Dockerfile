# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.20.0

FROM ghcr.io/containerbase/base:13.20.6@sha256:24c64e916085b6670848013059abe8290cce6c99f26aa2eca036492a6a2abe02

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
