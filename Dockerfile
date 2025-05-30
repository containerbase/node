# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.16.0

FROM ghcr.io/containerbase/base:13.8.36@sha256:e6a36fd4c7e9458b64e0b92f7c28c937aa4cb52598bb770034012c635a4de4e4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
