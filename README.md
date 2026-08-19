# Mica Homebrew Tap

A [Homebrew](https://brew.sh) tap for [Mica](https://github.com/lukecharters/Mica).

## Install

```sh
brew install --cask lukecharters/mica/mica
```

That installs `Mica.app` into `/Applications` and links the bundled `mica-cli`
onto your `PATH`, so both interfaces are available from one command.

Tapping first works too, and is the same thing in two steps:

```sh
brew tap lukecharters/mica
brew install --cask mica
```

## Upgrade

```sh
brew upgrade --cask mica
```

## Uninstall

```sh
brew uninstall --cask mica
```

Add `--zap` to remove Mica's preferences and support files as well. Mica is
sandboxed, so everything it stores lives in one container directory and `--zap`
takes all of it.

## Why a tap rather than homebrew/cask

Homebrew's [package acceptance policy](https://github.com/Homebrew/brew/blob/master/docs/Package-Acceptance-Policy.md)
asks a self-submitted project for 90 forks, 90 watchers or 225 stars. Mica is
newer than that. The cask here is otherwise written to homebrew/cask's own
rules and passes `brew audit --cask`, so it can move across largely unchanged
once the thresholds are met.
