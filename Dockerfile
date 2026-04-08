# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=24.14.1

FROM ghcr.io/containerbase/base:14.6.17@sha256:eec8acbb0bc840962127caaf9512e3511ea3ab3638b9403efd7c4971d9d21f2c

ARG NODE_VERSION

RUN set -ex; \
  if dpkg --compare-versions "${NODE_VERSION}" ge 25.0.0; then install-apt libatomic1; fi; \
  true

RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
