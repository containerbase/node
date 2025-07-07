# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.17.0

FROM ghcr.io/containerbase/base:13.8.55@sha256:c8d51a4b326193f1e210e30880fd482ff24b3a6f15c9b16c1f1a964d8aa70968

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
