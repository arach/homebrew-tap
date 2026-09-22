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

## OpenScout

Native macOS surface for Scout, the local-first coordination layer for the
coding agents you already run.

```sh
brew tap arach/tap
brew trust arach/tap
brew install --cask openscout
```

Requires Apple silicon and macOS Tahoe or later. This cask installs the native
OpenScout app; install the Scout CLI and local broker separately with
`bun add -g @openscout/scout`.

Source: [oscout/scout](https://github.com/oscout/scout) ·
Homepage: [openscout.app](https://openscout.app)

## Blink

Spatial notes for macOS, with floating note panels and a CLI over local Markdown.

```sh
brew tap arach/tap
brew trust arach/tap
brew install --cask arach/tap/blink  # Mac app
brew install --formula arach/tap/blink  # CLI
```

Requires Apple Silicon and macOS Sonoma or later. Both packages install Blink
2.1.0 from signed release assets; the app DMG is notarized.

Source: [arach/blink](https://github.com/arach/blink) ·
Homepage: [blink.arach.dev](https://blink.arach.dev)

## Updating a cask

Casks here are bumped automatically by the source repo's release workflow. To do
it by hand, get the checksum:

```sh
shasum -a 256 <the-downloaded-dmg>
```

then edit `version` and `sha256` in the cask.
