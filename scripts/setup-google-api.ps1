Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$envFile = Join-Path $PSScriptRoot "..\.env"
$example = Join-Path $PSScriptRoot "..\.env.example"
if (-not (Test-Path $envFile)) {
  Copy-Item $example $envFile
}

$key = Read-Host "Enter Google Gemini API key"
if ([string]::IsNullOrWhiteSpace($key)) {
  throw "Empty API key"
}

$content = Get-Content $envFile
$content = $content -replace '^GOOGLE_API_KEY=.*$', "GOOGLE_API_KEY=$key"
Set-Content -Path $envFile -Value $content
Write-Host "[ok] API key saved to .env"
