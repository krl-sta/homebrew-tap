# December

Homebrew cask for [December](https://github.com/krl-sta/December-updates) — a dual-pane
file manager for macOS.

## Install

```bash
brew tap krl-sta/tap
brew install --cask december
```

Homebrew 7 asks for trust the first time a third-party tap is used:

```bash
brew trust krl-sta/tap
```

Or in a `Brewfile`:

```ruby
tap "krl-sta/tap"
cask "december"
```

## Upgrade

```bash
brew upgrade --cask december
```

December also updates itself through Sparkle, so either path lands on the same build.

## Uninstall

```bash
brew uninstall --cask december
brew uninstall --zap --cask december   # also drops preferences and caches
```

## Requirements

arm64, macOS 15 or newer. The app is signed with a Developer ID and notarized by Apple.
