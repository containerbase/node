# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.1

FROM ghcr.io/containerbase/base:14.6.9@sha256:cc3893c06ba2b1f1fcc50b2f4c235113c0f20d38912df3b5cb39eab2e05423b9

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
