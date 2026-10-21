# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.1

FROM ghcr.io/containerbase/base:14.47.0@sha256:6b2e8030d47d66a212c8481298c652e62a2af718c79822ab244eb0103ad5ded7

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
