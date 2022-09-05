# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.0

FROM ghcr.io/containerbase/buildpack:4.13.5@sha256:0d01068b7924b724806806ac24344ef4f695cc9d3419d3f82584fb763a7bc093

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
