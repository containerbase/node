# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.13.1

FROM ghcr.io/containerbase/base:10.6.6@sha256:406922d90a919e8e4687db799dac3cd9ba58dec7fa1de67a67d97466a70d2b8a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
