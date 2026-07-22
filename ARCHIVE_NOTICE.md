# Archive Notice

`pleiades-container-termux` is a retired compatibility experiment retained only for provenance and migration safety.

## Current behavior

- `bootstrap-container.sh` exits `64`.
- `gentoo-up.sh` exits `64`.
- `gentoo-down.sh` exits `64`.
- `gentoo-shell.sh` exits `64`.
- No command creates, starts, stops, enters, mounts, installs, or configures a container.
- The MODOS component provides no capabilities and has no authority.
- No new package, image, or runtime release should be published from this repository.

## Successors

Use:

- [`pleiades-termux`](https://github.com/Zheke32174/pleiades-termux) for the Android/Termux observation edge;
- [`pleiades-container`](https://github.com/Zheke32174/pleiades-container) on a suitable Linux host for the Gentoo `systemd-nspawn` substrate.

## Archive readiness checklist

Before enabling GitHub's archive setting:

1. Confirm no active workspace, bootstrap, package, documentation, or automation still clones this repository as a runtime dependency.
2. Remove or update aliases and symlinks that invoke the retired commands.
3. Confirm all current commands fail with status `64` and nonempty deprecation guidance.
4. Confirm the public current-tree and reachable-history sensitivity scan has no unresolved findings.
5. Confirm the README, description, topics, homepage, MODOS declaration, and successor links all describe the repository as retired.
6. Disable or remove release/package publication workflows.
7. Preserve existing historical tags and releases as lineage unless a separate remediation requires their removal; do not edit them to represent new code.
8. Enable GitHub archive mode only after explicit steward approval.

Archiving should make the repository read-only. It must not be treated as deletion or as proof that downstream clones have migrated.
