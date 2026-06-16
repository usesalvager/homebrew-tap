# usesalvager/homebrew-tap

Homebrew tap for [Salvager](https://github.com/usesalvager/salvager) — *Undo for AI agents*.

## Install

```sh
brew install usesalvager/tap/salvager
```

That's `brew tap usesalvager/tap` + `brew install salvager` in one step.

## What this installs

`salvager` — a filesystem-level code safety net for AI agents. The formula
pulls the prebuilt static binary for your platform (macOS / Linux, amd64 /
arm64) from the [Salvager releases](https://github.com/usesalvager/salvager/releases),
verified by the same SHA-256 checksums the release publishes.

## Maintenance

`Formula/salvager.rb` is regenerated and pushed automatically by the Salvager
release pipeline on each `v*` tag (version + checksums come straight from the
release assets). See [RELEASING.md](https://github.com/usesalvager/salvager/blob/main/docs/RELEASING.md)
in the main repo. Manual edits will be overwritten on the next release.
