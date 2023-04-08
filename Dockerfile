# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.15.0

FROM ghcr.io/containerbase/base:7.7.1@sha256:39e9fa8ab244c339e452f11819a7216e9a3ba4bc519a63bc51a6b1fb34f070ea

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
