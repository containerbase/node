# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.18.0

FROM ghcr.io/containerbase/base:14.13.8@sha256:d8d4596e8c611aac402842fcee265b2723eb44669089e6c216497a2c2b0774b9

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
