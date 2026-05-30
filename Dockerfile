# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.16.0

FROM ghcr.io/containerbase/base:14.10.21@sha256:4cf92f44244a0e448c9d1579a5d199e6e0c773d233cd6c00513e3448d7cb8fe9

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
