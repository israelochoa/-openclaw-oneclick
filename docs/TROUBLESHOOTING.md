# Troubleshooting

## Docker command not found
- Install Docker Desktop (Windows/macOS) or Docker Engine + Compose plugin (Linux).

## OpenClaw does not start
1. `docker compose logs -f openclaw-gateway`
2. Validate `.env` exists and `GOOGLE_API_KEY` is non-empty.
3. Ensure port `18789` is free.

## Cannot connect to Google API
- Verify key validity and billing/project status.
- Run `./tests/test-connectivity.sh`.

## Windows execution policy blocks scripts
```powershell
Set-ExecutionPolicy -Scope Process Bypass
```
