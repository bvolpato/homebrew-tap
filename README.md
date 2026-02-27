# homebrew-tap

Homebrew tap for Bruno Volpato tools.

## Usage

```bash
brew tap bvolpato/tap
brew install mmdg
```

## Managed formulae

- `mmdg` - native Mermaid renderer in Go (`bvolpato/mermaid-go-renderer`)

## Release automation

Formula updates are automated by GoReleaser from:

- `https://github.com/bvolpato/mermaid-go-renderer`

On each `v*` tag release, GoReleaser updates `Formula/mmdg.rb` in this repository.
