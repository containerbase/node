# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.1

FROM ghcr.io/containerbase/base:13.5.6@sha256:64cad7a020da9e0fb6b3496fade83216714513dc42cd3128b6328c5d15d7c5a8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
