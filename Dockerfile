# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.17.6

FROM ghcr.io/containerbase/buildpack:1.18.0@sha256:16c164547e9461600a4ae179f9e973a3fc8148ab1093313b837b4e8fefc4be7a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
