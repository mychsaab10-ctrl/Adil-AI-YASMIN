#!/usr/bin/env sh
set -eu
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle is not installed. In Termux run: pkg install gradle"
echo "Then from project root run: gradle wrapper --gradle-version 8.9"
exit 1
