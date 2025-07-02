# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.17.0

FROM ghcr.io/containerbase/base:13.8.48@sha256:5a9fc85a657efb45bf77656a2ab641fa3b507dda62d2e648e5ade2d555ba4d23

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
