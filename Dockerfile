# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.14.0

FROM ghcr.io/containerbase/base:10.11.1@sha256:861ebb2016810500ce1709ffcaf04704afb176e5539f3c561708062f53b1c88e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
