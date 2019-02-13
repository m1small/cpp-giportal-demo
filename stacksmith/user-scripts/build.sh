#!/bin/bash

# Catch errors and undefined variables
set -euo pipefail

source "${UPLOADS_DIR}"

# Install deps - NONE


# Unzip App
mkdir -p "$(dirname $APP_DIR)"
unzip GlPortal-v0.0.7.1-frogger.tar.gz -d "$APP_DIR"
rm GlPortal-v0.0.7.1-frogger.tar.gz

# Create non-root user with sudo privileges
adduser "$NON_ROOT_USER" --home-dir "$NON_ROOT_HOME"
echo "$NON_ROOT_USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# Install GLportal
cd "$APP_DIR"

# Set ownership
chown -R "$NON_ROOT_USER":"$NON_ROOT_USER" "$APP_DIR"
