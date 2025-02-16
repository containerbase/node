# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.14.0

FROM ghcr.io/containerbase/base:13.7.15@sha256:e54355bd55fbc521cbec1d000a57c69649fec92400b00e8b9d82ba2839c9b790

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
