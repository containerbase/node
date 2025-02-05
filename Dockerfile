# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.13.1

FROM ghcr.io/containerbase/base:13.7.8@sha256:53a64e921c789bec807cd34a2568bc276b8f23038484de3278f785948db2d62a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
