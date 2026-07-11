# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.18.0

FROM ghcr.io/containerbase/base:14.12.9@sha256:8a4f204c7aaa0b1a3eda4387e456c64e12513119638879d8353972c4fe77bc4e

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
