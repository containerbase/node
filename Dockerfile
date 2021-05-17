# renovate: datasource=docker depName=node
ARG NODE_VERSION=14.17.0

FROM ghcr.io/containerbase/buildpack:1.6.1@sha256:65d2813db50ca95c578cb1fe8726ee4debbbfedefc14278167d9261ca1e5c3cc

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
