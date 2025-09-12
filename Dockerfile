# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.19.0

FROM ghcr.io/containerbase/base:13.12.2@sha256:a5cd10956bb0b0febb4383863e96cce9727832a24c87349ce65e3dedfaa4063e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
