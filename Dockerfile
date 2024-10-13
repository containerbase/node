# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.0

FROM ghcr.io/containerbase/base:11.11.31@sha256:04e6bc15054918cb49563490b8825869c12a967db4c081f062a6bf4b2267ffc6

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
