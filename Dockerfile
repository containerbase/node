# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.15.1

FROM ghcr.io/containerbase/buildpack:3.17.4@sha256:dbcfcca7de096140389a21695976c0056b5adee5e494bfb6b537dee5c7384080

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
