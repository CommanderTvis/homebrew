# Homebrew tap for tereditor builds

Install macOS (Apple Silicon) builds through one Homebrew tap.

| Package | Author | Id | Architectures |
| --- | --- | --- | --- |
| [tereditor (nightly)](https://github.com/CommanderTvis/tereditor) | [CommanderTvis](https://github.com/CommanderTvis) | `tereditor` (cask) | ARM64 |

## Add the tap

Use Homebrew 7 or later. The repository is not named `homebrew-<name>`, so pass its URL explicitly. Trust and add the tap once:

```sh
brew trust --tap commandertvis/homebrew   # Homebrew 7+ refuses untrusted taps
brew tap commandertvis/homebrew https://github.com/CommanderTvis/homebrew
```

## tereditor (nightly)

The [tereditor](https://github.com/CommanderTvis/tereditor) desktop app (formerly SharpRail), Apple Silicon only, downloaded from its rolling `nightly` release. The cask is hand-written and is `version :latest` with no checksum pin, so `brew upgrade --cask --greedy` re-downloads the current build. This package is not installation-tested by this repository. The old `sharprail` cask name is renamed to `tereditor`, so existing installs move over on `brew upgrade`.

```sh
brew install --cask commandertvis/homebrew/tereditor
brew upgrade --cask --greedy commandertvis/homebrew/tereditor
brew uninstall --cask commandertvis/homebrew/tereditor
```

## Remove the tap

```sh
brew untap commandertvis/homebrew
```

Removing the tap alone does not uninstall any package.

## Before installing

These are unofficial, unsigned builds. No Apple Developer ID signature or notarization ticket is attached, and macOS Gatekeeper blocks unnotarized applications downloaded from the internet by default. The cask runs a postflight step that clears the quarantine flag so installs and upgrades work without manual terminal commands; this does not otherwise disable macOS security protections. The `tereditor` cask download is not checksum-pinned.
