# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM ghcr.io/containerbase/buildpack:1.9.0@sha256:7a445e77431e8acb20c48b91727f5509ff94f8019d31635218d4d6e22fd9b2ac

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
