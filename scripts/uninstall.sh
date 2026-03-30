#!/usr/bin/env bash
set -euo pipefail

docker compose down -v --remove-orphans || true
rm -rf .openclaw
rm -f .env
echo "[ok] Instalación eliminada (contenedores, volúmenes y config local)."
