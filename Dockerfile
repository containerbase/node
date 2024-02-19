# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.11.1

FROM ghcr.io/containerbase/base:10.1.1@sha256:cdbf93e77063f821855b86ed138070435dfda5aed05b3cf1048e9ba705592a7c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
