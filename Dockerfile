# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.2

FROM ghcr.io/containerbase/base:10.3.15@sha256:9f70b4724102a6ebef8f25021e5d58c3fbf3fed26191c31cc6fc13e085afbb2b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
