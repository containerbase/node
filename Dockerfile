# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.0

FROM ghcr.io/containerbase/base:7.9.1@sha256:e7009883e2e9c37cced69327f56d339e6fc3652926905f4f517129f8ac3dee1a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
