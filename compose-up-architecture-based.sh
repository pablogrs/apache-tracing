#!/bin/bash
ARCH=$(uname -m)
if [ "$ARCH" = "arm64" ]; then
  export APACHE_IMAGE="arm64v8/httpd:2.4"
  export OTEL_IMAGE="bitnami/minideb:bullseye-arm64"
  export GRAFANA_IMAGE="grafana/grafana-arm64v8-linux:latest"
else
  export APACHE_IMAGE="httpd:2.4"
  export OTEL_IMAGE="bitnami/minideb:bullseye"
  export GRAFANA_IMAGE="grafana/grafana:latest"
fi


docker compose build
docker compose up