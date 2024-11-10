ARG APACHE_IMAGE

# https://hub.docker.com/_/httpd
FROM ${APACHE_IMAGE}

ARG APACHE_OTEL_MODULE_VERSION=1.1.0

# Apache User
RUN chown -R www-data:www-data /usr/local/apache2

# Apache logs dir
RUN mkdir -p /var/log/apache2 && chown -R www-data:www-data /var/log/apache2

# Download and install Apache OTel module
RUN apt update && apt install wget -y && \
    wget https://github.com/open-telemetry/opentelemetry-cpp-contrib/releases/download/webserver%2Fv${APACHE_OTEL_MODULE_VERSION}/opentelemetry-webserver-sdk-x64-linux.tgz && \
    tar -xvf opentelemetry-webserver-sdk-x64-linux.tgz && \
    cp -r opentelemetry-webserver-sdk/ /opt/ && /opt/opentelemetry-webserver-sdk/install.sh

# Clean up
RUN apt-get remove wget -y && apt-get clean && rm -rf /var/lib/apt/lists/* && \
    rm -rf opentelemetry-webserver-sdk-x64-linux.tgz

USER www-data
