# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.0

FROM ghcr.io/containerbase/base:9.9.1@sha256:18dec174dead1b41480dc35e7b96521a7b0227e01e7fd12343a7bc689773dc0e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
