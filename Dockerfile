# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM ghcr.io/containerbase/buildpack:3.17.0@sha256:f91acba8a5f89bf1f8751042fdb6e1bad66b358bf2fbceec4cb5a140da234a64

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
