# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.1

FROM ghcr.io/containerbase/base:14.55.1@sha256:fc248e5ee4a5daa6d876fe291b21c90529baa55853142f19d9883a94bd624a68

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
