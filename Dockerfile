# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.17.0

FROM ghcr.io/containerbase/base:14.12.2@sha256:7c501a9a0597b64a244755aa3009325f5992863ce5885acdefe7d2985d59e5f9

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
