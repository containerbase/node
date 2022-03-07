# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.14.0

FROM ghcr.io/containerbase/buildpack:3.11.1@sha256:169f219cd028927e751362fabd2e71869ed00cafcada28876895c7629dfd6989

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
