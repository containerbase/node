# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.1

FROM ghcr.io/containerbase/buildpack:4.16.5@sha256:bdf0e65d99fde7d3e708dee2b3591289c8b0545b02f0f56d70ebad3159b36a27

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
