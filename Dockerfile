# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM ghcr.io/containerbase/buildpack:1.7.0@sha256:ae855a39fc9761ff58930c3e36aef44b134ae005a0c0cdb25dcf89292ccca821

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
