# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.0

FROM ghcr.io/containerbase/base:9.8.1@sha256:6dfdd7eda5131c07dd68d22c706a6791b523f4bdfbbd68318c9b7523d8455606

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
