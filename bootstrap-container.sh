#!/data/data/com.termux/files/usr/bin/env bash
set -euo pipefail

cat >&2 <<'EOF'
pleiades-container-termux is deprecated and cannot bootstrap a Pleiades
systemd-nspawn container in ordinary Termux.

Use:
  - pleiades-termux for the observation-only Android edge node;
  - pleiades-container on a Linux host with systemd-nspawn;
  - a separately designed Android virtualization layer when available.

Returning success here would falsely claim that a trust boundary was created,
so this command fails closed.
EOF
exit 64
