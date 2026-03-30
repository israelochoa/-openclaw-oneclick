Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Set-Location (Join-Path $PSScriptRoot "..")

& "$PSScriptRoot\install-docker.ps1"

if (-not (Test-Path ".env")) {
  & "$PSScriptRoot\setup-google-api.ps1"
}

if (-not (Test-Path ".openclaw")) {
  New-Item -ItemType Directory -Path ".openclaw" | Out-Null
}

docker compose pull
docker compose up -d openclaw-gateway
Write-Host "[ok] Ready at http://127.0.0.1:18789"
