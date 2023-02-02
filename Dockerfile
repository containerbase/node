# renovate: datasource=node depName=node versioning=node
ARG NODE_VERSION=18.13.0

FROM ghcr.io/containerbase/base:6.1.1@sha256:48458bddf8116ce5dd6514f979ae89d1f24d791e5e0ecb23dd06bbb778957caa

ARG NODE_VERSION
RUN install-tool node

LABEL org.opencontainers.image.source="https://github.com/containerbase/node" \
      org.opencontainers.image.version="${NODE_VERSION}"

USER 1000
