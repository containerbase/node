# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.19.0

FROM ghcr.io/containerbase/base:9.25.0@sha256:f0d880fff787b8a67b44f745d111b9336488754e7077903b91c4a761b5aee820

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
