# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.1

FROM ghcr.io/containerbase/buildpack:4.5.2@sha256:b1090676b8635dc7adb1421575bc130a0b7d301fde0622393856f66db3d9912f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
