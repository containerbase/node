# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM ghcr.io/containerbase/buildpack:3.7.1@sha256:901a2e58322cd648e820603c9e4df149da483f750877054d7da4a2baf081fb37

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
