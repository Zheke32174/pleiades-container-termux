# Security Policy

## Repository status

This repository is retired compatibility lineage. It does not provide a supported container, isolation boundary, Android virtualization layer, system service, or privileged runtime.

Every executable compatibility entry point is required to print a deprecation notice and exit with status `64` without performing lifecycle work.

## Supported versions

There are no supported operational versions. The current default branch is maintained only to preserve fail-closed behavior, migration guidance, public provenance, and archive integrity.

Security fixes are limited to defects where the current repository could:

- report false operational success;
- perform an unexpected host, Android, shell, mount, namespace, service, or filesystem mutation;
- expose credentials, private topology, personal data, or local workstation details;
- direct users toward an unsafe or nonexistent successor;
- publish a misleading package or release artifact.

## Reporting

Use GitHub's private vulnerability-reporting or Security Advisory interface when available. Do not post credentials, private host details, personal data, or exploit-ready material in a public issue.

A useful report includes the affected commit, command, expected exit status, actual behavior, and a synthetic reproducer.

No response-time or remediation-time guarantee is offered.

## Trust boundary

Ordinary Termux does not provide the systemd host, cgroup, mount, namespace, or `systemd-nspawn` authority required by the maintained Linux container substrate.

These files must never:

- emulate success for unavailable container operations;
- create a service, namespace, root filesystem, mount, or privileged process;
- claim workload execution or local-enforcement authority;
- install aliases or symlinks automatically;
- publish a new runtime package or container image;
- be copied into the active `pleiades-termux` edge runtime.

The current MODOS component declaration has authority `none`, provides no capabilities, and has `never-promote` policy.

## Historical content

Historical refs may contain the earlier compatibility experiment. Before archival, CI scans the current tree and reachable Git history for configured credential, private-topology, and host-local patterns.

A clean current tree does not prove clean history. Any genuine historical sensitive-data finding requires explicit remediation or a documented release/archive blocker; it must not be hidden behind a broad allowlist.

## Successors

- Android/Termux observation edge: `Zheke32174/pleiades-termux`
- Linux-host Gentoo nspawn substrate: `Zheke32174/pleiades-container`

Neither successor inherits authority from this repository merely because it is linked here.
