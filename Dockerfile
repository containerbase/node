# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.0

FROM ghcr.io/containerbase/buildpack:3.16.0@sha256:5d460046b636c652391853caf7a489c0bb408c7f1d86c8ce704a096f0b79845f

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
