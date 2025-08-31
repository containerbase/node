# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.19.0

FROM ghcr.io/containerbase/base:13.10.12@sha256:cc06d4450a3ac0e0b4f559a9f75bd24b4559a6c36763966331f05b072dd4f845

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
