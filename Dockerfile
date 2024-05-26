# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.13.1

FROM ghcr.io/containerbase/base:10.6.16@sha256:dc8294bd9b74c0208efed8887f42971b52e537c45d5317eab5b1f3d59f13f5e6

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
