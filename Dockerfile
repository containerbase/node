# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.0

FROM ghcr.io/containerbase/base:9.9.0@sha256:bbf0c765ecf546f634f84d455ce608df8ae783224a7630364d021a1f50b5df15

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
