# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.16.0

FROM ghcr.io/containerbase/base:13.8.44@sha256:2fc5ad34e5fe692ac6dd681deab03533faaf0c1deb8d3a24244261fb57346a5a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
