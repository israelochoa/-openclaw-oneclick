#!/usr/bin/env bash
set -euo pipefail

docker compose up -d openclaw-gateway
./scripts/healthcheck.sh

echo "E2E smoke test passed (startup + health)."
