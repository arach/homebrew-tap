# arach/homebrew-tap

Homebrew tap for Arach's macOS apps.

## Action

Native macOS automation runtime that records what agents do on screen.

```sh
brew tap arach/tap
brew trust arach/tap
brew install --cask action
```

All three lines, in that order. `brew install --cask action` on its own fails
with "No Cask with this name exists" and helpfully suggests `activedock`, because
a short cask name only resolves against Homebrew's own catalogue and the taps you
have already added.

`brew trust` is required too: Homebrew refuses to load a cask from a third-party
tap until it is trusted, and tells you to run exactly that.

Requires macOS Sonoma or later. Action needs Accessibility and Screen Recording
permissions to observe and drive other apps; macOS prompts on first use.

Source: [arach/action](https://github.com/arach/action)

## Updating a cask

Casks here are bumped automatically by the source repo's release workflow. To do
it by hand, get the checksum:

```sh
shasum -a 256 <the-downloaded-dmg>
```

then edit `version` and `sha256` in the cask.
