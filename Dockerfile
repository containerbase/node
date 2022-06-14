# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.1

FROM ghcr.io/containerbase/buildpack:4.1.0@sha256:410953f53ec400345d6905e1559bf437802b3254c36878a7f82db3b255e9660e

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
