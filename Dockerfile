# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.1

FROM ghcr.io/containerbase/buildpack:3.20.0@sha256:6bb3621daf9e2320b5a7fccfc8fb2ff7c9fbe4e093228e07cb51371d4c384795

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
