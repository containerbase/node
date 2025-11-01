# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.21.1

FROM ghcr.io/containerbase/base:13.23.16@sha256:35631f6c137540c78779bf71f0d514caa5cd3699274067736956a91acdda68c6

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
