# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.10.0

FROM ghcr.io/containerbase/base:9.29.0@sha256:181b7feb719da85a2f65653566b3947702365f0115dc3eb8ebfe12051e7cebb8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
