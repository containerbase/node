# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.13.1

FROM ghcr.io/containerbase/base:10.6.9@sha256:f7dd659c07e2f733f442f66f78bec2192c42a8ff85db58b8ee249aa1d8e3a5d8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
