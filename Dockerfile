# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.18.1

FROM ghcr.io/containerbase/buildpack:5.2.2@sha256:b3b79b75ce303a11845895ba07aa2a7c734c0567b82ec4f766ad4d445cd836e4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
