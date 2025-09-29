# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.20.0

FROM ghcr.io/containerbase/base:13.14.3@sha256:bf2c595e88888228e8410acc76001184cd729db25428524c9306c120693f73c0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
