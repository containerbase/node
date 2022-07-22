# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.16.0

FROM ghcr.io/containerbase/buildpack:4.7.1@sha256:43e23b020abc5c3d44bb8faa98d6fc3b16791c5b4d25e39d54eb0b2af96fe562

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
