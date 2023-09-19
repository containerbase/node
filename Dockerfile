# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.1

FROM ghcr.io/containerbase/base:9.20.3@sha256:5c0756dc035a3980110c81d7a028bcbb3a5a06d473ee96c18aeb470a10c769f7

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
