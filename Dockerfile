# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.18.2

FROM ghcr.io/containerbase/buildpack:2.9.0@sha256:136a2de8362f9cb6755485454bbf7b265bd4c56b6d27f96f3c48e56db93d9b95

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
