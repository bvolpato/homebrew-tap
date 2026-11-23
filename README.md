# homebrew-tap

Homebrew tap for Bruno Volpato tools.

## Usage

```bash
brew tap bvolpato/tap
brew install promptlatch
brew install ivygrep
brew install mmdg
brew install sweetspot
```

## Managed formulae

- `promptlatch` - Local secret-redacting LLM proxy and Python library (`bvolpato/promptlatch`)
- `ivygrep` - Semantic grep for codebases, using local lexical and vector search (`bvolpato/ivygrep`)
- `mmdg` - native Mermaid renderer in Go (`bvolpato/mermaid-go-renderer`)
- `sweetspot` - Interactive Wi-Fi spot finder and network/modem advisor TUI (`bvolpato/sweetspot`)

## Release automation

Formula updates are automated by GitHub Actions / GoReleaser from:

- `https://github.com/bvolpato/promptlatch` (Python, manual release formula update)
- `https://github.com/bvolpato/ivygrep` (Rust, GitHub Actions)
- `https://github.com/bvolpato/mermaid-go-renderer` (Go, GoReleaser)
- `https://github.com/bvolpato/sweetspot` (Go, GitHub Releases)

On each `v*` tag release, the respective CI updates the formula in this repository.
