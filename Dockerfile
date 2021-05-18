# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM ghcr.io/containerbase/buildpack:1.8.0@sha256:3adec8196bcec7d1b822c24938347edaf9572d575c71e13aefa22fd80bbeb2ef

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
