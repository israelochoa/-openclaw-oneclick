# Security Model

## Threats considered
- Accidental exposure of local AI service to LAN/Internet.
- Secret leakage (`GOOGLE_API_KEY`) via git history.
- Supply-chain risk from custom local image builds.

## Mitigations
- Docker port binding restricted to localhost (`127.0.0.1:18789:18789`).
- `.env` in `.gitignore` and placeholder-only `.env.example`.
- Default to official pre-built image `ghcr.io/openclaw/openclaw:latest`.
- Read-only mounts for static config templates.

## Operational recommendations
- Rotate API keys periodically.
- Keep Docker Desktop/Engine updated.
- Run `make update` weekly.
