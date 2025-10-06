# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.20.0

FROM ghcr.io/containerbase/base:13.15.0@sha256:0237959aa14e8320d731583c9d6239f85543c18ca093396d89c37d06c53051a1

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
