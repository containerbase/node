# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.22.3

FROM ghcr.io/containerbase/base:14.66.21@sha256:c325d9c52815dce8b631ff0f0c66e558bbbf7c94aa9c3a606a2464de02075f92

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
