# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.20.0

FROM ghcr.io/containerbase/base:14.14.3@sha256:9db6ea7c03bf2717f79233a32b44274861210bac0891b89fc7fc01777aae0b65

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
