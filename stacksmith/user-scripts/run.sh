#!/bin/bash

# Catch errors and undefined variables
set -euo pipefail

source "${UPLOADS_DIR}/env"

echo "=> Starting GLportal"
cd "$APP_DIR"
./glportal
