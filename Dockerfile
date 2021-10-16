# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=14.18.1

FROM ghcr.io/containerbase/buildpack:1.19.4@sha256:5af93f8cfc1fe1378716184661981c2dbe8a3519ca546da7dfc85ad70e2f066c

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
