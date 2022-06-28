# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.1

FROM ghcr.io/containerbase/buildpack:4.6.1@sha256:25d37c733efd068daad8d31d32952948ecf8c244a68d27116c8eb90afa792bd0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
