# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=18.16.1

FROM ghcr.io/containerbase/base:9.0.8@sha256:f59bd22ab967e677907f9d5da2f14e9ac397aff65648aa1d171c06fa9d1e556b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
