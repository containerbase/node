# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.1

FROM ghcr.io/containerbase/base:14.4.4@sha256:0f4e46c22c90c27cd6f45599f73898a4eb485f6e8c8e9a2461f987fad235fd18

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
