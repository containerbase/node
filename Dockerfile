# renovate: datasource=node-version depName=node versioning=node
ARG NODE_VERSION=20.10.0

FROM ghcr.io/containerbase/base:9.30.7@sha256:4cd023ec1e63d5c374daff3066a33dd9f6daf3aa68ed54350687b07985db4c33

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
