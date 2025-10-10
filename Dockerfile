# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.20.0

FROM ghcr.io/containerbase/base:13.20.1@sha256:70597033e9654834055c94b76e705de7c9bd835cbab444138945c94dcbec2f4a

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
