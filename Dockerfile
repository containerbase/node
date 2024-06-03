# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.14.0

FROM ghcr.io/containerbase/base:10.7.2@sha256:c7d6c411446c1b680cd071abf7ee4c28801e651deae7a9968bed983f7bf7b9c0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
