#!/usr/bin/env bash
# Prints a greeting for the name given as the first argument.
# With --shout as the first argument, prints the greeting in capital letters.
set -euo pipefail
if [[ "${1:-}" == "--shout" ]]; then
  shift
  greeting="Hello, ${1:-world}!"
  echo "${greeting^^}"
else
  echo "Hello, ${1:-world}!"
fi
