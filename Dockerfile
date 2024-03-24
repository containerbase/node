# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.1

FROM ghcr.io/containerbase/base:10.3.6@sha256:9d8701a32de0b87318e9485d52c540f4f7ce02a6d7363a72088664c57bf7e546

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
