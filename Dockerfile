# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.11.1

FROM ghcr.io/containerbase/base:13.25.11@sha256:9b93a1a8774314e59e286a59fe332577b784b587c66cb68ab12e9101a7e98155

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
