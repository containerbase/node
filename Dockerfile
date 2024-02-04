# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.0

FROM ghcr.io/containerbase/base:9.33.1@sha256:e1edd49ae6bcc6c468600436eed78db6739624f6d892c2bf4c312d03fb732bf9

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
