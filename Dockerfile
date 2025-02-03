# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.13.1

FROM ghcr.io/containerbase/base:13.7.5@sha256:cf716be71cfd908afb59074739938f55857ff9d756665533be3ae61fb29306df

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
