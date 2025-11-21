# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.1

FROM ghcr.io/containerbase/base:13.25.1@sha256:d91b2ea004ca58164a9c36aef4ad92256a6e6cf5899d7e58a9fcbd46bd36f7c6

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
