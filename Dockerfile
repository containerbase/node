# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM ghcr.io/containerbase/buildpack:3.6.2@sha256:d33bc42ae5ffb6ab6a90b53cfed58a5e709a968746d5dac200035c7fb5d52cb8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
