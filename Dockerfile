# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.0

FROM ghcr.io/containerbase/base:11.11.36@sha256:7fcd6007d5bef0fad7f34b021c3815c13f8a9ccc8ed0eea28bc8ab5ca99e4f30

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
