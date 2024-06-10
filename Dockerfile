# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.14.0

FROM ghcr.io/containerbase/base:10.11.3@sha256:5fa9d9e1b9656c75d5f87f41f4e9cad55068e407c21509de5c32b27338b7edf3

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
