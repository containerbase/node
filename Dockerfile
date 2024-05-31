# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.14.0

FROM ghcr.io/containerbase/base:10.7.0@sha256:b96aa33a0df3720b247f496fa2654fb9739f686da46d96c89ee03fd1dc3bd682

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
