# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.10.0

FROM ghcr.io/containerbase/base:9.30.2@sha256:6b5db7e17cb682281117e70d80a2fffa073a45bf8cdbbe5b8c2ad9872ce0ef9f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
