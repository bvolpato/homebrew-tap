# homebrew-tap

Homebrew tap for Bruno Volpato tools.

## Usage

```bash
brew tap bvolpato/tap
brew install promptcloak
brew install ivygrep
brew install mmdg
```

## Managed formulae

- `promptcloak` - Local secret-redacting LLM proxy and Python library (`bvolpato/promptcloak`)
- `ivygrep` - Semantic grep for codebases — hybrid lexical + vector search, local-only (`bvolpato/ivygrep`)
- `mmdg` - native Mermaid renderer in Go (`bvolpato/mermaid-go-renderer`)

## Release automation

Formula updates are automated by GitHub Actions / GoReleaser from:

- `https://github.com/bvolpato/promptcloak` (Python, manual release formula update)
- `https://github.com/bvolpato/ivygrep` (Rust, GitHub Actions)
- `https://github.com/bvolpato/mermaid-go-renderer` (Go, GoReleaser)

On each `v*` tag release, the respective CI updates the formula in this repository.
