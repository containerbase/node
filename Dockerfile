# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.0

FROM ghcr.io/containerbase/base:9.20.6@sha256:02efde32631b5b7e494fc12df841f5d82b4d80de0afe978d0dfca79d1c9219a3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
