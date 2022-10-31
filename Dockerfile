# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.18.0

FROM ghcr.io/containerbase/buildpack:4.17.0@sha256:8568c5698e4129f2ec1f93df6dbd3298d069791f53c5744314fdd9a8dbe7d334

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
