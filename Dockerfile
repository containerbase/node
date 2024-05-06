# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.2

FROM ghcr.io/containerbase/base:10.6.3@sha256:0ecef01e73000552f75bf0b90340abb245da29aca378a2f6c07ca7b75a03f96e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
