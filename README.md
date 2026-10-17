# yanokamay-org Homebrew Tap

Homebrew tap for [mAIestro Code](https://github.com/yanokamay-org/maiestro), a menu-bar dashboard for parallel Claude Code, Codex and Copilot sessions.

## Install

```sh
brew tap yanokamay-org/tap
brew trust --cask yanokamay-org/tap/maiestro-code
brew install --cask maiestro-code
```

Homebrew only loads casks from third-party taps you've trusted. The `brew trust` line trusts this one cask, not the whole tap.

Requires an Apple Silicon Mac.

## Bumping after a release

Once a new release (with its `.dmg`) is published in `yanokamay-org/maiestro`, update the cask's version and checksum:

```sh
brew bump-cask-pr --write-only --version X.Y.Z yanokamay-org/tap/maiestro-code
```

Then commit and push the change to `Casks/maiestro-code.rb`.
