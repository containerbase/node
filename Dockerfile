# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.15.0

FROM ghcr.io/containerbase/base:14.10.4@sha256:eb43d25a56098e58171d7a65a2382b9f8b99097f21e7da82626fe6b5016b0c10

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
