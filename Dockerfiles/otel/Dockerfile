# https://hub.docker.com/r/bitnami/minideb
FROM bitnami/minideb:bullseye

ARG OTEL_COLLECTOR_VERSION=0.112.0

RUN install_packages wget
RUN wget --no-check-certificate https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTEL_COLLECTOR_VERSION}/otelcol-contrib_${OTEL_COLLECTOR_VERSION}_linux_amd64.tar.gz
RUN tar -xvf otelcol-contrib_${OTEL_COLLECTOR_VERSION}_linux_amd64.tar.gz -C /usr/local/bin

ENTRYPOINT ["/usr/local/bin/otelcol-contrib"]
