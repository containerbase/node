# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM ghcr.io/containerbase/buildpack:3.7.0@sha256:9491cc028c027665b5d2468cd2d47b9f62b103d8765724b3485049a7cb1203a7

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
