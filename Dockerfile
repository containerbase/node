# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.17.0

FROM ghcr.io/containerbase/base:11.11.27@sha256:14d8b62ccd92c1e0e6ffd2cb58d825d6c64d33323c5fc0732dc67d21968fd34b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
