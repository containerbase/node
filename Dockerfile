# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.2

FROM ghcr.io/containerbase/base:10.6.0@sha256:d333c18082018277eb616c92b0bec17d6b9d57a7f48629da5072a297d3179f2a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
