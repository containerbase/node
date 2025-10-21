# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.0

FROM ghcr.io/containerbase/base:13.23.8@sha256:ae212c6ef8d5b10de151426fe0207e5472fd4e65962af656f1d8f35f5971c8ff

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
