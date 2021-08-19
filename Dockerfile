# renovate: datasource=docker depName=node versioning=node
ARG NODE_VERSION=14.17.5

FROM ghcr.io/containerbase/buildpack:1.16.0@sha256:5ce3976dae1a51ec8101445b316e24ee5d315d8663d38b877722536813a773e4

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
