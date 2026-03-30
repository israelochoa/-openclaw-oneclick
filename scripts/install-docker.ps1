Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (Get-Command docker -ErrorAction SilentlyContinue) {
  docker compose version | Out-Null
  Write-Host "[ok] Docker + Compose detectados."
  exit 0
}

Write-Host "[error] Docker Desktop no está instalado."
Write-Host "Instálalo desde: https://www.docker.com/products/docker-desktop/"
exit 1
