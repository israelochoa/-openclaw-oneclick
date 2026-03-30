# openclaw-oneclick

Instala y ejecuta OpenClaw con Docker y Google Gemini API (tier gratuito) en **un solo comando**.
Install and run OpenClaw with Docker + Google Gemini API (free tier) in **one command**.

## Quick Start (ES)

1. Crea tu API key de Google Gemini.
2. Ejecuta:
   ```bash
   chmod +x scripts/oneclick.sh
   ./scripts/oneclick.sh
   ```
3. Abre `http://127.0.0.1:18789`.

Windows (PowerShell como Admin recomendado):
```powershell
./scripts/oneclick.ps1
```
O doble clic en `scripts/oneclick.bat`.

## Quick Start (EN)

1. Create a Google Gemini API key.
2. Run:
   ```bash
   chmod +x scripts/oneclick.sh
   ./scripts/oneclick.sh
   ```
3. Open `http://127.0.0.1:18789`.

Windows:
```powershell
./scripts/oneclick.ps1
```
Or double-click `scripts/oneclick.bat`.

## Features
- Secure-by-default Docker Compose (`127.0.0.1` binding only).
- Interactive API key setup for macOS/Linux and Windows.
- Health checks and troubleshooting docs.
- CI pipeline for shell, compose, and config validation.

## One-command alternatives
- Unix: `make setup`
- Docker only: `make start`

## References
- OpenClaw official repository: <https://github.com/openclaw/openclaw>
- OpenClaw Docker docs: <https://docs.openclaw.ai/install/docker>
- Docker setup script: <https://github.com/openclaw/openclaw/blob/main/docker-setup.sh>
- Google provider docs: <https://docs.openclaw.ai/providers/google>
- Pre-built image: `ghcr.io/openclaw/openclaw:latest`

## Security note
Never commit `.env` or real API keys. This repository ships only placeholders.
