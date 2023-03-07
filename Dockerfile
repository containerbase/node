# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.15.0

FROM ghcr.io/containerbase/base:6.3.7@sha256:6e93c9ab5d9c0f11688f1eedec8eed37afc4681cd243a857a53e8701bc7f6485

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
