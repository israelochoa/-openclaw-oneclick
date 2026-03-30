#!/usr/bin/env bash
set -euo pipefail

if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
  echo "[ok] Docker + Compose ya están instalados."
  exit 0
fi

echo "[info] Docker no detectado."
case "$(uname -s)" in
  Darwin)
    echo "Instala Docker Desktop desde: https://www.docker.com/products/docker-desktop/"
    ;;
  Linux)
    echo "Instala Docker Engine + Compose plugin. Guía: https://docs.docker.com/engine/install/"
    ;;
  *)
    echo "Sistema no soportado automáticamente."
    ;;
esac
exit 1
