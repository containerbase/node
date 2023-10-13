# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.18.1

FROM ghcr.io/containerbase/base:9.23.2@sha256:a890383584589afa9daf340d61efaea6d3086747e188594510de1c8d8eae464e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
