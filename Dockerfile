# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.19.0

FROM ghcr.io/containerbase/base:14.13.18@sha256:32bd7f74ca9e59db869f8f8fc5470c0da6f606b65031bafe7af12de33d80eb0a

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
