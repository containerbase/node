# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.15.0

FROM ghcr.io/containerbase/base:13.8.19@sha256:9281238e473eac08507992ad297d02fc597c42a9db9aec800a5088772efcae69

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
