# AGENTS.md — openclaw-oneclick

## Scope
These instructions apply to the entire repository.

## Mission
Build and maintain a one-click, beginner-friendly Docker setup for OpenClaw with Google Gemini API support.

## Engineering rules
- Favor secure-by-default behavior.
- Never commit secrets; `.env` must stay local.
- Keep scripts idempotent and cross-platform where possible.
- Prefer official OpenClaw image (`ghcr.io/openclaw/openclaw:latest`) unless there is a hard requirement to build locally.
- Bind app ports to localhost only.
- Use clear, beginner-facing error messages in English and Spanish when practical.

## Script quality
- Bash scripts: `set -euo pipefail` and defensive checks.
- PowerShell scripts: use `Set-StrictMode -Version Latest` and `$ErrorActionPreference = 'Stop'`.
- Validate prerequisites and print actionable next steps.

## PR / Commit expectations
- Keep commits cohesive.
- Document security-relevant defaults in `docs/SECURITY.md`.
- If architecture changes, update `docs/ARCHITECTURE.md`.
