# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM ghcr.io/containerbase/buildpack:1.14.0@sha256:34169f83f6e465012ea5b73dbc5468f5c9a90e303674af3db08fed5007cee1ae

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
