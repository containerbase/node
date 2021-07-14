# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.3

FROM ghcr.io/containerbase/buildpack:1.10.2@sha256:5853ca42be2f230ba9282631c4250c08797be832e88044f1f8d59a5a8158d87a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
