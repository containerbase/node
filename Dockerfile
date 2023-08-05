# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.0

FROM ghcr.io/containerbase/base:9.8.6@sha256:15302ae081adf21da91dff37695bfcdce7019052412968052c388c14ab3d1130

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
