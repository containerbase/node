# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.1

FROM ghcr.io/containerbase/base:10.2.4@sha256:5c01098caba1402e2a9fcee108eb44c9e01e0acfbff836fef791dd7833cd1e66

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
