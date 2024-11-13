#!/bin/sh
# description: Haraka startup and configuration script

# Link or copy TLS files if they don’t already exist in /haraka/config
[ ! -f /haraka/config/tls_cert.pem ] && ln -s /haraka/config/tls/tls_cert.pem /haraka/config/tls_cert.pem
[ ! -f /haraka/config/tls_key.pem ] && ln -s /haraka/config/tls/tls_key.pem /haraka/config/tls_key.pem

# Run the configuration script
/usr/local/bin/haraka-configure --haraka-config-dir /haraka/config --haraka-config-templates-dir /haraka/templates

# Start Haraka
/usr/local/bin/haraka -c /haraka
