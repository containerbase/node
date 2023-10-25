# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.2

FROM ghcr.io/containerbase/base:9.23.6@sha256:7eb71b5bcc0d67e1a60d8585895eab75b2ab131d9502331234feb458e82b09a5

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
