# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.1

FROM ghcr.io/containerbase/base:9.5.2@sha256:a82747db78be7b749b5e39856a0cefd1a8c915314ccceb1da62b89dffdd745f2

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
