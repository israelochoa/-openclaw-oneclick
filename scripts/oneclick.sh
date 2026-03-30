#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

./scripts/install-docker.sh || {
  echo "[error] Instala Docker y vuelve a ejecutar este script."
  exit 1
}

if [[ ! -f .env ]]; then
  ./scripts/setup-google-api.sh
fi

mkdir -p .openclaw
docker compose pull

docker compose up -d openclaw-gateway
./scripts/healthcheck.sh

echo "[ok] Listo. Abre: http://127.0.0.1:${OPENCLAW_PORT:-18789}"
