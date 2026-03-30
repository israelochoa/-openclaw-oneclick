#!/usr/bin/env bash
set -euo pipefail

ENV_FILE=".env"
cp -n .env.example "$ENV_FILE" || true

echo "Ingresa tu Google Gemini API key (no se mostrará):"
read -r -s KEY
if [[ -z "${KEY}" ]]; then
  echo "[error] API key vacía."
  exit 1
fi

if grep -q '^GOOGLE_API_KEY=' "$ENV_FILE"; then
  sed -i.bak "s|^GOOGLE_API_KEY=.*|GOOGLE_API_KEY=${KEY}|" "$ENV_FILE"
  rm -f "$ENV_FILE.bak"
else
  echo "GOOGLE_API_KEY=${KEY}" >> "$ENV_FILE"
fi

echo "[ok] API key guardada en $ENV_FILE"
