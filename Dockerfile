# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.19.0

FROM ghcr.io/containerbase/base:13.10.19@sha256:b682e95b1929cf37678c4f70483e3788179f306ee1480518ce0c9dc37aee1a0a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
