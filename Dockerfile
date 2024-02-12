# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.0

FROM ghcr.io/containerbase/base:9.33.9@sha256:d404446d1f6a87d8c4369e47115ef701a9e35d653ce0b8f5c03b34778febcbc5

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
