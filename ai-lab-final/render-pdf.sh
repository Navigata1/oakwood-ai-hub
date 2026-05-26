#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML="$SCRIPT_DIR/pdf-briefing.html"
OUT="$SCRIPT_DIR/Oakwood_AI_Lab_Final_Briefing.pdf"

if [[ ! -f "$HTML" ]]; then
  echo "Missing HTML source: $HTML" >&2
  exit 1
fi

PLAYWRIGHT_HEADLESS="$(
  find "${HOME}/Library/Caches/ms-playwright" "${HOME}/.cache/ms-playwright" \
    -path "*chrome-headless-shell*" -type f -name "chrome-headless-shell" 2>/dev/null \
    | sort \
    | tail -n 1 || true
)"

if [[ -n "${CHROME_BIN:-}" && -x "$CHROME_BIN" ]]; then
  CHROME="$CHROME_BIN"
elif command -v chrome-headless-shell >/dev/null 2>&1; then
  CHROME="$(command -v chrome-headless-shell)"
elif [[ -n "$PLAYWRIGHT_HEADLESS" && -x "$PLAYWRIGHT_HEADLESS" ]]; then
  CHROME="$PLAYWRIGHT_HEADLESS"
elif command -v google-chrome >/dev/null 2>&1; then
  CHROME="$(command -v google-chrome)"
elif command -v chromium >/dev/null 2>&1; then
  CHROME="$(command -v chromium)"
elif command -v chromium-browser >/dev/null 2>&1; then
  CHROME="$(command -v chromium-browser)"
elif [[ -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]]; then
  CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
elif [[ -x "/Applications/Chromium.app/Contents/MacOS/Chromium" ]]; then
  CHROME="/Applications/Chromium.app/Contents/MacOS/Chromium"
else
  echo "Could not find Chrome or Chromium. Set CHROME_BIN to the executable path." >&2
  exit 1
fi

PROFILE_DIR="$(mktemp -d /tmp/oakwood-pdf-chrome.XXXXXX)"
trap 'rm -rf "$PROFILE_DIR"' EXIT

"$CHROME" \
  --headless=new \
  --single-process \
  --disable-gpu \
  --no-sandbox \
  --user-data-dir="$PROFILE_DIR" \
  --allow-file-access-from-files \
  --run-all-compositor-stages-before-draw \
  --virtual-time-budget=1000 \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT" \
  "file://$HTML"

echo "Rendered $OUT"
