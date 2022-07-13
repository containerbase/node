# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.16.0

FROM ghcr.io/containerbase/buildpack:4.6.6@sha256:fd7c8d9ee84080fa44c2a1854cbff7dca0586c96053c32a2757736f2617812e1

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
