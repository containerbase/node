# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.0

FROM ghcr.io/containerbase/base:6.1.2@sha256:e6d1b05ed124560a1b9b4b2b6d0beb0734c1e8908b19eb7b54d0bcf44e607c19

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
