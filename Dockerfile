# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.0

FROM ghcr.io/containerbase/buildpack:4.10.2@sha256:4163939cf793216d33dc5ba567136158b8b1c8f15ad8bd7c556f582666d865b0

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
