# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.14.0

FROM ghcr.io/containerbase/base:13.7.19@sha256:d7b424f58b6a62690bccb23e3abf451f938e4cd0486e7d6b820095d84c05c4a5

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
