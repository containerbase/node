# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.13.1

FROM ghcr.io/containerbase/base:10.6.12@sha256:c25753ff3b22b70bb4f3b3420dd833142ce258370eddaae465c5cab199fb07a7

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
