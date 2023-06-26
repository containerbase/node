# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.1

FROM ghcr.io/containerbase/base:9.0.6@sha256:bb79b7d314cd86b6eba0c79e98f5c3702ef4b59d66e19ec00f9b91625c2d8e80

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
