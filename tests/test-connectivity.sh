#!/usr/bin/env bash
set -euo pipefail

if [[ ! -f .env ]]; then
  echo ".env missing; skipping connectivity test"
  exit 0
fi

if ! grep -q '^GOOGLE_API_KEY=' .env; then
  echo "GOOGLE_API_KEY not set"
  exit 1
fi

echo "connectivity precheck OK"
