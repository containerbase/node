# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.1

FROM ghcr.io/containerbase/buildpack:4.16.3@sha256:3cba366c6eeaccf30fe64970fafe5fd1a5fc9d8b218f7a473c4642881459664d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
