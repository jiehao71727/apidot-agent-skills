#!/bin/sh
set -eu

api_url="https://api.apidot.ai/api/generate/submit"
payload_file="${1:-}"

if [ -z "${APIDOT_API_KEY:-}" ]; then
  echo "APIDOT_API_KEY is required. Set it in a server-side environment before running this script." >&2
  exit 1
fi

if [ -n "$payload_file" ]; then
  if [ ! -f "$payload_file" ]; then
    echo "Payload file not found: $payload_file" >&2
    exit 1
  fi
  body=$(cat "$payload_file")
else
  if [ -t 0 ]; then
    echo "Usage: set APIDOT_API_KEY in the environment, then run scripts/submit_seedance_2.sh [payload.json]" >&2
    echo "Or pipe a reviewed JSON payload through standard input." >&2
    exit 1
  fi
  body=$(cat)
fi

curl -sS "$api_url" \
  -H "Authorization: Bearer $APIDOT_API_KEY" \
  -H 'Content-Type: application/json' \
  -d "$body"
