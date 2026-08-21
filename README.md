# arach/homebrew-tap

Homebrew tap for Arach's macOS apps.

```sh
brew tap arach/tap
brew trust arach/tap
```

Homebrew refuses to load casks from a third-party tap until you trust it, so the
second line is required, not optional.

## Casks

### Action

Native macOS automation runtime that records what agents do on screen.

```sh
brew install --cask action
```

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
