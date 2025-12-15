#!/usr/bin/env bash
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter SDK not found. Install Flutter and ensure 'flutter' is on your PATH."
  echo "Use 'flutter pub get' (not 'dart pub get') to resolve dependencies."
  exit 69
fi

flutter pub get "$@"
