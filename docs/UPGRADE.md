# Upgrade Guide

1. Pull latest repository changes.
2. Run:
   ```bash
   make update
   ```
3. Check health:
   ```bash
   ./scripts/healthcheck.sh
   ```

If issues occur, rollback by pinning image tag in `docker-compose.yml`.
