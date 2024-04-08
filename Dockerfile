# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.12.1

FROM ghcr.io/containerbase/base:10.3.12@sha256:d5498f499c2cf918c18165254e0d45309e0f831b3e6fb83f1bca60e619138681

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
