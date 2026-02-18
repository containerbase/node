# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.13.1

FROM ghcr.io/containerbase/base:14.4.2@sha256:433f589c69ccec80f503161a786df2c45f6247c36a8f8534f845b5bd37c29e1d

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
