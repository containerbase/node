# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.18.0

FROM ghcr.io/containerbase/buildpack:1.19.2@sha256:01446b3d46c04837461316723fe6acceb306b20c8ea0e0bf2210f7bef8f87e70

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
