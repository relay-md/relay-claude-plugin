# Relay for Claude

The Relay plugin for Claude. The plugin itself is the [`plugin/`](plugin) folder; see its [README](plugin/README.md) for what it does and how to install it.

Everything else in this repository builds and checks it.

## Build

Requires `make`, `jq`, `zip` and Claude Code.

```sh
make validate   # claude plugin validate --strict
make bundle     # writes dist/relay-md-<version>.zip
```

To release, set `version` in `plugin/.claude-plugin/plugin.json`, commit, and push a tag `v<version>`. The release workflow validates the plugin, builds the bundle and attaches it to a GitHub release.
