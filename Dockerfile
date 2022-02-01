# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.19.0

FROM ghcr.io/containerbase/buildpack:2.9.2@sha256:4d8cc88b5f765994b6083cc51aab82d21d434cfdfe6725d7543e624684b97a8e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
