# Pleiades Container Termux — Deprecated

This repository is a historical compatibility experiment and an archive candidate.

Ordinary Termux does not provide the systemd host, namespace authority, cgroup control, mount authority, or `systemd-nspawn` runtime required by [`pleiades-container`](https://github.com/Zheke32174/pleiades-container). Replacing those facilities with successful no-op stubs does not create isolation; it only conceals that the requested operation never occurred.

For that reason, the bootstrap, start, stop, and shell commands now fail closed with exit code `64`.

## Use instead

| Need | Repository / layer |
|---|---|
| Android observation queue and operator client | [`pleiades-termux`](https://github.com/Zheke32174/pleiades-termux) |
| Hardened Gentoo `systemd-nspawn` substrate | [`pleiades-container`](https://github.com/Zheke32174/pleiades-container) on a Linux host |
| Android virtual guest or portable rooted environment | Future separately designed virtualization project |

## Why the repository is not deleted immediately

The current tree preserves provenance for the earlier adaptation and prevents stale clones or links from silently resolving to an unrelated project. After migration references are removed and no active deployment depends on it, the repository should be archived through GitHub settings.

## Security statement

Nothing in this repository creates a container, a root boundary, a system service, a namespace, or a privileged Android environment.

The files under `systemd/` are historical references only. They must not be copied into the active Termux runtime, and their presence does not imply that systemd is available.

## Migration

1. Remove this repository from any bootstrap or workspace automation.
2. Install the current `pleiades-termux` edge-node runtime.
3. Move Linux-host container lifecycle work to `pleiades-container`.
4. Remove aliases or symlinks for `gentoo-up`, `gentoo-down`, and `gentoo-shell` on Android.
5. Archive this repository after verifying no consumers remain.

## License

MIT — see [LICENSE](LICENSE).
