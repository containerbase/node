# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.0

FROM ghcr.io/containerbase/base:13.23.20@sha256:b7d8ddc9c0577093d7ad2342c4e79f5e98c2e288252be6fe7e2e69be8f0c6605

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
