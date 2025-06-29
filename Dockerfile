# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.17.0

FROM ghcr.io/containerbase/base:13.8.46@sha256:2718850f952fff28ef8c4ce58416f1dd4fb42a4042020766d5d6ac6e24e61bda

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
