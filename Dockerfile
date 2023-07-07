# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.1

FROM ghcr.io/containerbase/base:9.2.1@sha256:15c2686cec59b204288432bb867f83cc0e899998dde1a04a4165e3b30bcd818b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
