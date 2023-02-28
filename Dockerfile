# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.14.2

FROM ghcr.io/containerbase/base:6.3.2@sha256:f9fe56e4efa9ec2a05f529c1e4bee8a6a066fe791949fb8726be3b90cb53fe1b

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
