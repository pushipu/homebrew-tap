# homebrew-tap

Homebrew tap for [Hydra](https://github.com/pushipu/Hydra) — a multithreaded macOS download manager.

```bash
brew install --cask --no-quarantine pushipu/tap/hydra
```

`--no-quarantine` is needed while the app is ad-hoc signed (not notarized yet); it
lets the app open without Gatekeeper warnings. Once a notarized build ships, plain
`brew install --cask pushipu/tap/hydra` will be enough.
