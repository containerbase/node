# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM ghcr.io/containerbase/buildpack:3.15.1@sha256:da243150ed9866034c7ed62af965401edc0c88fc2c654557c30cdda836fc0f6e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
