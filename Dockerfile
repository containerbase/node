# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.19.0

FROM ghcr.io/containerbase/buildpack:5.11.0@sha256:6cf4edd1fadd9a151fe5c4910d3228c97cc82495012e6d27239ca775e2902c0b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
