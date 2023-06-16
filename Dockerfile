# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.0

FROM ghcr.io/containerbase/base:8.0.5@sha256:ad793e11cda90e83649e00c0417b6fccf9fb0f77e390cd114fb7b128859a840e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
