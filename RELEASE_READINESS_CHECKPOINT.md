# Public Release-Readiness Checkpoint

## Repository

- Repository: `Zheke32174/pleiades-container-termux`
- Public role: retired compatibility stub and historical lineage only
- Draft branch: `hardening/archive-readiness-v1`
- Draft pull request: #3
- Last implementation head: `d02693b54b53cb0aef7a157f3b960a7429ccfc38`
- Last completed validation: archive-integrity run `29670079787` — success
- Reconsideration trigger: `main` advanced to `c5418512b1f621367c51cc22bc0ea7e698aa6561` with a new tag-release workflow after the retirement branch had removed all release authority

## Completed scope

- Reconciled the public description with the repository's actual fail-closed behavior.
- Retired the impossible Termux `systemd-nspawn` adapter rather than presenting it as a supported runtime.
- Declared lifecycle `retired`, authority `none`, no capabilities, and promotion policy `never-promote`.
- Preserved all compatibility entry points as explicit status-64 refusal shims with nonempty migration guidance.
- Added an archive notice, MIT license, and retired-project security policy.
- Removed GHCR and GitHub Release automation from the archive candidate.
- Added current-tree and reachable-history sensitivity scanning.
- Proved the retirement boundary at implementation head `d02693b...` in run `29670079787`.
- Reconciled later `main` commit `c541851...` without retaining its release workflow; a retired repository must not acquire new publication authority.
- Pinned the remaining checkout Action to reviewed full SHA `11bd71901bbe5b1630ceea73d27597364c9af683`, disabled persisted credentials, and fixed the validation runner to `ubuntu-24.04`.

## Resolved findings

1. **Misleading runtime claim:** the repository no longer advertises a functioning Android container adapter.
2. **False authority declaration:** MODOS no longer grants local enforcement or workload capabilities.
3. **Missing license:** the claimed MIT license now exists in the repository.
4. **Missing disclosure path:** `SECURITY.md` explains the retired support boundary and responsible reporting path.
5. **Mutable publication path:** release and GHCR workflows are absent from the archive candidate.
6. **False-success compatibility behavior:** every executable compatibility command fails closed with exit status 64.
7. **Workflow supply-chain weakness:** the remaining third-party Action is full-SHA pinned and checkout credentials are not persisted.
8. **Branch divergence:** the post-retirement `main` release-workflow commit is incorporated as ancestry while deliberately excluded from the resulting tree.

## Validation receipts

- `29670079787`: archive-integrity run passed at `d02693b54b53cb0aef7a157f3b960a7429ccfc38`.
- Coverage included shell parsing, status-64 refusal behavior, retired/no-authority/never-promote invariants, required public documents, absence of release automation, and current-tree plus reachable-history sensitivity scanning.
- A fresh exact-head receipt is required after the reconciliation and workflow-hardening commit.

## Open blockers

1. Exact-head archive-integrity CI must pass after reconciliation.
2. Confirm no active consumer, documentation link, package, image, automation, or deployment still depends on this repository.
3. Close or otherwise resolve open issues and pull requests before archival.
4. Update the repository description if it still implies an active runtime.
5. Enable GitHub archive mode only through an explicit steward repository-setting action.
6. Administratively verify secret scanning, push protection, and private vulnerability reporting where applicable.

## Deferred items

- Historical releases and tags remain untouched as lineage; no retroactive rewriting or deletion is authorized.
- GitHub archive mode is a repository-setting action and is not performed by this draft.
- External backups or migration archives are optional steward operations, not source changes.

## External-practice provenance

- GitHub recommends updating the README and repository description and closing issues and pull requests before archival. Archival makes repository content and collaboration surfaces read-only.
- GitHub states that full-length commit SHAs are the only immutable third-party Action references.
- GitHub recommends security policies, secret scanning, push protection, Dependabot alerts, and code scanning for public repositories where relevant.

No external source code was copied.

## Reconsideration triggers

Reopen source review only if one of the following occurs:

- branch or default-branch content changes;
- CI status changes or a new validation receipt appears;
- release, package, image, or deployment authority reappears;
- a new public-facing runtime claim is introduced;
- a credential, advisory, or sensitivity finding appears;
- an active downstream consumer is discovered;
- archive policy or repository settings change;
- an explicit steward request is made.

## Next action

Inspect the fresh exact-head archive-integrity receipt. If green, stop ordinary source reprocessing and conduct the consumer/reference check required before a separate steward archival decision.
