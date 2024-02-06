# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.0

FROM ghcr.io/containerbase/base:9.33.4@sha256:6871a164ce812be2bfb559cec08dadbfa409391f793d7bdbce6692fa787d6214

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
