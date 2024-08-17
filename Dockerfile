# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.16.0

FROM ghcr.io/containerbase/base:11.11.2@sha256:d1870d8fbc01b0d949b1aedd32684110e082213de14f92cad228f1d13053734e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
