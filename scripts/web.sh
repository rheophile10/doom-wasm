#!/bin/bash
# Assemble the browser build into dist/: the wasm, the page and bridge from web/, Freedoom Phase 2,
# and the licences that have to travel with them.
set -euo pipefail
cd "$(dirname "$0")/.."
FREEDOOM=wads/freedoom-0.13.0
rm -rf dist && mkdir -p dist
cp web/index.html web/bridge.js web/touch.js web/default.cfg dist/
cp src/websockets-doom.js src/websockets-doom.wasm dist/
cp "$FREEDOOM/freedoom2.wad" dist/
cp "$FREEDOOM/COPYING.txt" dist/FREEDOOM-COPYING.txt
cp COPYING.md dist/CHOCOLATE-DOOM-COPYING.md
ls -la dist
