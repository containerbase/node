# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM ghcr.io/containerbase/buildpack:3.15.5@sha256:bb5bb7e16a6a033b63921e973179539a4d0b8920c4d9ffd11ed12e8e81a74071

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
