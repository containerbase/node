# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.1

FROM ghcr.io/containerbase/buildpack:4.16.2@sha256:137e73fa7db525078c9ed1b669335c5e47cb89f51097b969027cd0fb915499d5

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
