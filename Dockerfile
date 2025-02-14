# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.14.0

FROM ghcr.io/containerbase/base:13.7.14@sha256:cb641361951a5b74ad4ae653d389f6a37cc04010f44886fee4e527779ec7f892

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
