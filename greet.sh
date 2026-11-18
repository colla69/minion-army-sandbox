#!/usr/bin/env bash
# Prints a greeting for the name given as the first argument.
set -euo pipefail
echo "Hello, ${1:-world}!"
