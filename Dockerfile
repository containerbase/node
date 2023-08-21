# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.1

FROM ghcr.io/containerbase/base:9.13.0@sha256:bbebfdde2373a69cca327717237b0f02c75d8a6659bbbb754dac01e3ff76488d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
