# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.16.0

FROM ghcr.io/containerbase/base:11.3.0@sha256:2b13285e228ab0a4015da45fac3b374795457870bdb8029702c582cb6ecba326

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
