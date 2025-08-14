# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.18.0

FROM ghcr.io/containerbase/base:13.8.68@sha256:552acdc1d3aad2f5ffc5d6b3b399cd4eec7f404a28e294fb974b3ad64007749f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
