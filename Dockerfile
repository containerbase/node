# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.13.1

FROM ghcr.io/containerbase/base:13.7.6@sha256:5668bd25f06e684c89073ebb935ad82c92ba9b25147ec12580c0c4b5ef687134

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
