# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.0

FROM ghcr.io/containerbase/buildpack:4.11.0@sha256:3d079dfe09510b539c0a96941e08c2e727c611ed2fa31be6aed1a41959d853f8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
