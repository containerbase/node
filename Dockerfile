# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.18.1

FROM ghcr.io/containerbase/base:13.3.0@sha256:1c41abb8eb0ae06d6b10303964bc6f00f4873da1afd5053d9b468128b76e478d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
