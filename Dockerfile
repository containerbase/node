# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.16.0

FROM ghcr.io/containerbase/base:14.11.2@sha256:2f30a045b55d2f743d63bb916c6ce48d905e69a34619926740cd5261fbdaeadf

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
