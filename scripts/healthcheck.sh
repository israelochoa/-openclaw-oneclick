#!/usr/bin/env bash
set -euo pipefail

URL="http://127.0.0.1:${OPENCLAW_PORT:-18789}/health"
echo "[info] Verificando ${URL}"
if curl -fsS "$URL" >/dev/null; then
  echo "[ok] OpenClaw responde correctamente."
else
  echo "[error] OpenClaw no responde. Revisa: docker compose logs -f openclaw-gateway"
  exit 1
fi
