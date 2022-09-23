# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=16.17.1

FROM ghcr.io/containerbase/buildpack:4.16.0@sha256:71afbe270fcdef75eb363bdeb9191c961c29263bb394fa01723e7df6d45b463d

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
