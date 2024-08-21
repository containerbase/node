# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.17.0

FROM ghcr.io/containerbase/base:11.11.6@sha256:839d6d28eada75d9bfb5b55ba2a0e3e1bb687905bbfce2961f68789509d7380c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
