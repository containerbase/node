# renovate: datasource=npm depName=node versioning=node
ARG NODE_VERSION=14.17.2

FROM ghcr.io/containerbase/buildpack:1.10.1@sha256:39c77d18cbfb05d696642436b40b4d0553df52a1b2fad160c1dffd813ee429ab

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
