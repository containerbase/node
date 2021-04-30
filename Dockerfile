# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.16.1

FROM ghcr.io/containerbase/buildpack:1.3.0@sha256:8d0bd58e02d271304e6ab378aede3927dd2cfb98cdae59d0e8bf6f66a5393963

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
