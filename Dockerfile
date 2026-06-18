# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.17.0

FROM ghcr.io/containerbase/base:14.12.0@sha256:78eef50acdb8a889a413a3aedcd8c07b13f84ce084fae6fb84cc9dc55bbed0d7

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
