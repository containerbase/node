# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.2

FROM ghcr.io/containerbase/base:6.3.4@sha256:31dbe48cde0308c1adfdd2c5820522c15a863c9d49ebcd210f118addcffe1a01

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
