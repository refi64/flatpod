#!/usr/bin/bash

DIR=$(dirname "${BASH_SOURCE[0]}")
set -ex
install -Dm 755 "$DIR/flatpod" "${1:-/usr/local}/bin"
