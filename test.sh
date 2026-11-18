#!/usr/bin/env bash
# Tests greet.sh. Prints each failure and ends with exit code 1 if any check fails.
set -uo pipefail
cd "$(dirname "$0")"
failures=0
expect() { # expected output, arguments...
  local expected=$1 actual
  shift
  actual=$(./greet.sh "$@")
  if [[ "$actual" != "$expected" ]]; then
    echo "FAILED: greet.sh $*: expected '$expected', got '$actual'"
    failures=$((failures + 1))
  fi
}
expect "Hello, world!"
expect "Hello, Ada!" Ada
expect "HELLO, BOB!" --shout Bob
expect "HELLO, WORLD!" --shout
exit $((failures > 0))
