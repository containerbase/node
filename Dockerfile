# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.15.0

FROM ghcr.io/containerbase/base:7.2.0@sha256:7c92c94faaaf58c80f12d14dffcf7497a5ff86e1bf8f10ab1dc417d3bd3f6d98

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
