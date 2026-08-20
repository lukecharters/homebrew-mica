# Mica Homebrew Tap

A [Homebrew](https://brew.sh) tap for [Mica](https://github.com/lukecharters/Mica).

## Install

```sh
brew tap lukecharters/mica
brew trust lukecharters/mica
brew install --cask mica
```

That installs `Mica.app` into `/Applications` and links the bundled `mica-cli`
onto your `PATH`, so both interfaces arrive together.

The `brew trust` step is not specific to this tap. Homebrew refuses to load a
cask from any third-party tap until it is trusted - `HOMEBREW_REQUIRE_TAP_TRUST`
defaults to on — so without it `brew install` stops with *Refusing to load cask
… from untrusted tap*.

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
