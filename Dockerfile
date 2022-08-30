# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.0

FROM ghcr.io/containerbase/buildpack:4.13.2@sha256:a608e5c9784ec73cd4779d4fc6a2ae9214e3e42f7ebf1e3e66311b0523e94c69

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
