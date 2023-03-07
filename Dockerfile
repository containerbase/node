# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.2

FROM ghcr.io/containerbase/base:6.3.6@sha256:35e2f15c28984e853631e6259cf780b0565ad307e6fa032ce18c510b7f6aead8

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
