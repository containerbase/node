# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.18.2

FROM ghcr.io/containerbase/buildpack:2.9.1@sha256:5acfe8feb61c453a8454f614d3d5811b98ac5a67cf1efa874fb43148eb66a3c9

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
