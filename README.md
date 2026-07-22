# Pleiades Container Termux — Retired

> **Status:** fail-closed migration stub and archive candidate. This repository does not provide a container or downloadable runtime.

Ordinary Termux does not provide the systemd host, cgroup, mount, namespace, or `systemd-nspawn` authority required by the maintained Linux [`pleiades-container`](https://github.com/Zheke32174/pleiades-container) substrate.

Earlier compatibility code attempted to imitate unavailable facilities. Successful no-op stubs concealed failure without creating isolation. The current bootstrap, start, stop, and shell entry points therefore print migration guidance and exit with status `64` without performing lifecycle work.

## Do not install or release this repository

There is no supported package, image, APK, container root, release artifact, or runtime service to download. New releases are disabled. Historical tags or release pages are lineage only and must not be interpreted as supported software.

Do not copy files from `systemd/` into Termux. Their presence is historical provenance and does not imply that systemd or nspawn is available on Android.

## Use instead

| Need | Supported repository / layer |
|---|---|
| Android/Termux observation queue and operator CLI | [`pleiades-termux`](https://github.com/Zheke32174/pleiades-termux) |
| Gentoo `systemd-nspawn` substrate | [`pleiades-container`](https://github.com/Zheke32174/pleiades-container) on a suitable Linux host |
| Android virtual guest or portable rooted environment | A future separately designed virtualization project |

Neither successor inherits authority from this repository merely because it is linked here.

## Current guaranteed behavior

These commands must all fail with exit status `64` and nonempty guidance:

```text
bootstrap-container.sh
install-scripts/gentoo-up.sh
install-scripts/gentoo-down.sh
install-scripts/gentoo-shell.sh
```

Nothing in the current tree creates, starts, stops, enters, mounts, installs, or configures a container, system service, root boundary, namespace, or privileged Android environment.

The MODOS declaration has lifecycle `retired`, authority `none`, no provided capabilities, hard-fail policy, and `never-promote` policy.

## Migration

1. Remove this repository from bootstrap, workspace, package, and deployment automation.
2. Remove Android aliases or symlinks for the retired Gentoo lifecycle commands.
3. Install the reviewed `pleiades-termux` edge runtime for Android observation work.
4. Move nspawn lifecycle work to `pleiades-container` on a Linux host.
5. Confirm no active consumer remains.
6. Complete the checklist in [ARCHIVE_NOTICE.md](ARCHIVE_NOTICE.md), then enable GitHub archive mode only with explicit steward approval.

## Why it remains public temporarily

The repository preserves provenance, catches stale links and clones, and provides an unambiguous migration destination. Deleting or repurposing it immediately could make old automation resolve to unrelated behavior.

Public CI verifies that every executable fails closed, no success stub reappears, the component declaration remains retired, release automation stays absent, and the current tree plus reachable Git history pass the configured sensitivity scan.

## Security and license

Security posture and supported-report scope: [SECURITY.md](SECURITY.md)

MIT — see [LICENSE](LICENSE).
