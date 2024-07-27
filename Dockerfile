# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.16.0

FROM ghcr.io/containerbase/base:11.1.3@sha256:c2ab937029951e8c59e1c55c2c213819f5de01b69e8b7b5cc82e067c4919a2a0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
