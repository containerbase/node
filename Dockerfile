# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.0

FROM ghcr.io/containerbase/base:8.0.1@sha256:319ba5d86cccf86d69d51133fb74d3e566a7cc9d81243867c4333df19572cb7a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
