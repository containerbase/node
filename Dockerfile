# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.16.0

FROM ghcr.io/containerbase/buildpack:4.6.4@sha256:de95eb5c8ccf17eba3aa8f0a6f6aa64e3b5c5e14d76a797ff2a07110d254e524

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
