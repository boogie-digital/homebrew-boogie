# homebrew-boogie

Homebrew tap for [Boogie](https://boogie.digital) command-line tools.

## jmapcli — JMAP from the command line

A fast, native macOS CLI for JMAP and [Stalwart Mail Server](https://stalw.art).
Send, read, search, sync, and manage mail (and run as an MCP server) from your
terminal. Credentials live in the macOS Keychain; no telemetry.

```sh
brew install boogie-digital/boogie/jmapcli
```

Homebrew 6+ will not install a raw formula URL. The fully-qualified name taps and trusts only this formula.

- Binary-only (closed source); the signed, notarised binary is hosted on
  `boogie.digital`.
- Requires macOS on Apple Silicon (`arm64`).
- Part of [Boogie](https://boogie.digital) — the native Apple JMAP mail +
  calendar client.

## Updating

```sh
brew update
brew upgrade jmapcli
```
