# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.1

FROM ghcr.io/containerbase/base:10.3.13@sha256:07057011001be8149ffc113f364d88a5b8e768a08562f73d9f65e4b72c56d105

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
