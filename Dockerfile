# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=22.18.0

FROM ghcr.io/containerbase/base:13.8.67@sha256:1ac3399609b01ec22d38295a146fa322782af587e00b3be34563911ad7817096

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 12021
