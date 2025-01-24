# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.2

FROM ghcr.io/containerbase/base:13.7.1@sha256:30723babfc2fa1699d87f6ee26b145b8974c59aaf902f274822f8a2268756269

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
