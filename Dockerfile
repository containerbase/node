# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.16.0

FROM ghcr.io/containerbase/base:7.8.1@sha256:f93819c8c5328118ed79fe9090f07d8c723fa41bead21255794d777231e3aac2

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
