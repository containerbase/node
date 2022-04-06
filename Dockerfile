# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.2

FROM ghcr.io/containerbase/buildpack:3.14.2@sha256:932d192005b0452d52368c7496f01b75b60d42fc9e1be2594d57fb3c4ed5694c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
