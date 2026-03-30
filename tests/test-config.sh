#!/usr/bin/env bash
set -euo pipefail

python3 -m json.tool config/openclaw.json.template >/dev/null
python3 -m json.tool config/agents-defaults.json >/dev/null
echo "json config OK"
