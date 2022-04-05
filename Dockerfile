# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM ghcr.io/containerbase/buildpack:3.14.0@sha256:8b09ea0b53925d5ea3ce61b2666e1bd39994717671a129659a916b4f984d7568

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
