# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM ghcr.io/containerbase/buildpack:1.17.0@sha256:3dbc36d40a4d5b983eae8c950720d0ada380d937358b0601e7e0ad0189dc86ff

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
