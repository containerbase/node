# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.10.0

FROM ghcr.io/containerbase/base:9.30.9@sha256:e8b28561327a1ca12d693222ece51b8284e65f9e9e5efe2052a42d7f36412ec4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
