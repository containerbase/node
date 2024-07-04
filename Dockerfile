# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.15.0

FROM ghcr.io/containerbase/base:10.15.2@sha256:0d11770eb8dadf082bfcec1a0e151f4993fb088808d42c83913e1080997a327f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
