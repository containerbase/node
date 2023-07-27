# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.17.0

FROM ghcr.io/containerbase/base:9.8.0@sha256:f4c23a88b20ab478f8a163118ffa9901eaa15243976d9e161d6fd31cdee89425

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
