# Pleiades Container Termux

Termux-adapted sister repo of [pleiades-container](https://github.com/Zheke32174/pleiades-container).

In the original, this repo builds a Gentoo `systemd-nspawn` container. In Termux, `systemd-nspawn` is not available, so the scripts serve as **stubs and reference** — they exit gracefully with a message when run in Termux.

## What's Here

| File | Purpose |
|------|---------|
| `bootstrap-container.sh` | Container bootstrap (exits gracefully in Termux) |
| `install-scripts/gentoo-up.sh` | Container start (stub in Termux) |
| `install-scripts/gentoo-down.sh` | Container stop (stub in Termux) |
| `install-scripts/gentoo-shell.sh` | Container shell (stub in Termux) |
| `systemd/system/*.service` | Reference systemd service units |

## Termux Adaptation

When `PLEIADES_ENV=termux` is set, all scripts detect the Termux environment and exit with an informative message. The `pleiades-termux-lib.sh` compatibility layer provides stubs for `systemd-nspawn`, `systemctl`, and `nsenter` so that agent scripts that check for these commands don't fail.

## Related Repos

| Repo | Purpose |
|------|---------|
| [pleiades-termux](https://github.com/Zheke32174/pleiades-termux) | Host scripts and agent suite |
| *this repo* | Container bootstrap (reference/stubs) |
| [pleiades-factory-stack-termux](https://github.com/Zheke32174/pleiades-factory-stack-termux) | Toolchain bootstrap |
