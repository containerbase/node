# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.16.0

FROM ghcr.io/containerbase/buildpack:4.10.0@sha256:97be66af4ffb3a3d1be000f6cf5f8a866b6ae6a8f93fe592ef8f908afce38b30

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
